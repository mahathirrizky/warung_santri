import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:warung_santri/models/models.dart';

import 'aruskas_event.dart';
import 'aruskas_state.dart';

class AruskasBloc extends Bloc<AruskasEvent, AruskasState> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  AruskasBloc() : super(const AruskasState.initial()) {
    on<AruskasEvent>((event, emit) async {
      await event.when(
        getRangeArusKas: (startDate, endDate) =>
            getRangeArusKas(startDate, endDate, emit),
        addArusKas: (arusKas) => addArusKas(arusKas, emit),
        updateArusKas: (arusKas, arusKasId) =>
            updateArusKas(arusKas, arusKasId, emit),
        deleteArusKas: (arusKasId) => deleteArusKas(arusKasId, emit),
      );
    });
  }

  Future<void> getRangeArusKas(
      DateTime startDate, DateTime endDate, Emitter<AruskasState> emit) async {
    emit(const AruskasState.loading());
    try {
      endDate =
          DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59, 999);
      // Ubah startDate dan endDate ke format string yang sesuai untuk Firestore
      String formattedStartDate = startDate.toIso8601String();
      String formattedEndDate = endDate.toIso8601String();
      final querySnapshot = await firestore
          .collection("arusKas")
          .where("createdAt", isGreaterThanOrEqualTo: formattedStartDate)
          .where("createdAt", isLessThanOrEqualTo: formattedEndDate)
          .orderBy("createdAt", descending: true)
          .get();
      final documents = querySnapshot.docs;

      final arusKasList = documents.map((doc) {
        final data = doc.data();
        final arusKas = ArusKas(
          id: doc.id,
          jenisTransaksi: data['jenisTransaksi'],
          jumlah: data['jumlah'],
          createdAt: DateTime.parse(data['createdAt']),
          keterangan: data['keterangan'],
        );
        return arusKas;
      }).toList();
      emit(AruskasState.success(arusKasList));
    } catch (e) {
      emit(AruskasState.failure(e.toString()));
    }
  }

  Future<void> addArusKas(ArusKas arusKas, Emitter<AruskasState> emit) async {
    try {
      final saldo = await _hitungSaldo();

      if (arusKas.jenisTransaksi == "Pengeluaran" && arusKas.jumlah > saldo) {
        throw ("Saldo tidak cukup");
      }

      final docRef =
          await firestore.collection("arusKas").add(arusKas.toJson());

      toastification.show(
        title: const Text('Add Kas Success'),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );

      final aruskasId = docRef.id;

      final pembukuanData = Pembukuan(
        idReferensi: aruskasId,
        referensi: 'arusKas',
        keterangan: arusKas.keterangan,
        jumlah: arusKas.jenisTransaksi == "Pemasukan"
            ? arusKas.jumlah
            : -arusKas.jumlah,
        createdAt: DateTime.now(),
      ).toJson();
      await firestore.collection("pembukuan").add(pembukuanData);
    } catch (e) {
      toastification.show(
        title: Text('$e'),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  Future<void> updateArusKas(
      ArusKas arusKas, String arusKasId, Emitter<AruskasState> emit) async {
    try {
      final saldo = await _hitungSaldo();

      if (arusKas.jenisTransaksi == "Pengeluaran" && arusKas.jumlah > saldo) {
        throw Exception("Gagal update. Saldo tidak cukup");
      }
      // Update arusKas in Firestore
      await firestore
          .collection("arusKas")
          .doc(arusKasId)
          .update(arusKas.toJson());

      toastification.show(
        title: const Text('Update Kas Success'),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
      final pembukuanData = Pembukuan(
        idReferensi: arusKasId,
        referensi: 'arusKas',
        keterangan: arusKas.keterangan,
        jumlah: arusKas.jenisTransaksi == "Pemasukan"
            ? arusKas.jumlah
            : -arusKas.jumlah,
        createdAt: DateTime.now(),
      ).toJson();
      await firestore
          .collection("pembukuan")
          .where("referensi", isEqualTo: "arusKas")
          .where("idReferensi", isEqualTo: arusKasId)
          .get()
          .then((snapshot) {
        for (DocumentSnapshot doc in snapshot.docs) {
          doc.reference.update(pembukuanData);
        }
      });
    } catch (e) {
      toastification.show(
        title: Text('$e'),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  Future<void> deleteArusKas(
      String arusKasId, Emitter<AruskasState> emit) async {
    try {
      // Hapus arusKas dari Firestore
      await firestore.collection("arusKas").doc(arusKasId).delete();
      await firestore
          .collection("pembukuan")
          .where("referensi", isEqualTo: "arusKas")
          .where("idReferensi", isEqualTo: arusKasId)
          .get()
          .then((snapshot) {
        for (DocumentSnapshot doc in snapshot.docs) {
          doc.reference.delete();
        }
      });

      toastification.show(
        title: const Text('Delete Kas Success'),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    } catch (e) {
      toastification.show(
        title: Text('Error: $e'),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  Future<double> _hitungSaldo() async {
    final snapshot = await firestore.collection('pembukuan').get();
    double totalSaldo = 0.0;

    for (var doc in snapshot.docs) {
      final pembukuan = Pembukuan.fromJson(doc.data());
      totalSaldo += pembukuan.jumlah;
    }

    return totalSaldo;
  }
}

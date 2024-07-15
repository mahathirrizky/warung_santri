import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../../models/models.dart';
import 'stokbarang_event.dart';
import 'stokbarang_state.dart';

class StokbarangBloc extends Bloc<StokbarangEvent, StokbarangState> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  StokbarangBloc() : super(const StokbarangState.initial()) {
    on<StokbarangEvent>((event, emit) async {
      await event.when(
        addStokBarang: (StokBarang stokBarang) =>
            addStokBarang(stokBarang, emit),
        updateStokBarang: (StokBarang stokBarang, String stokBarangId) =>
            updateStokBarang(stokBarang, stokBarangId, emit),
        deleteStokBarang: (String stokBarangId) =>
            deleteStokBarang(stokBarangId, emit),
      );
    });
  }

  Future<void> addStokBarang(
      StokBarang stokBarang, Emitter<StokbarangState> emit) async {
    emit(const StokbarangState.loading());
    try {
      await firestore.collection("stokbarang").add(stokBarang.toJson());
      toastification.show(
        title: const Text('Stok Barang diTambah'),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    } catch (e) {
      toastification.show(
        title:  Text('Error Menambah Stok: $e'),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  Future<void> updateStokBarang(StokBarang stokBarang, String stokBarangId,
      Emitter<StokbarangState> emit) async {
    emit(const StokbarangState.loading());
    try {
      await firestore
          .collection("stokbarang")
          .doc(stokBarangId)
          .update(stokBarang.toJson());
      toastification.show(
        title: const Text('Stok Barang diUpdate'),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    } catch (e) {
      toastification.show(
        title: Text('Error Update Stok: $e'),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  Future<void> deleteStokBarang(
      String stokBarangId, Emitter<StokbarangState> emit) async {
    emit(const StokbarangState.loading());
    try {
      await firestore.collection("stokbarang").doc(stokBarangId).delete();
       toastification.show(
        title: const Text('Stok Barang diHapus'),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    } catch (e) {
      toastification.show(
        title:  Text('Error Mengahapus Stok: $e'),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  Stream<QuerySnapshot<StokBarang>> streamStokBarang() {
    return firestore
        .collection("stokbarang")
        .orderBy("createdAt", descending: true)
        .withConverter<StokBarang>(
          fromFirestore: (snapshot, _) => StokBarang.fromJson(snapshot.data()!),
          toFirestore: (stokbarang, _) => stokbarang.toJson(),
        )
        .snapshots();
  }
}

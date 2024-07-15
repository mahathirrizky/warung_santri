import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../models/models.dart';
import 'pembelianbarang_event.dart';
import 'pembelianbarang_state.dart';

class PembelianbarangBloc
    extends Bloc<PembelianbarangEvent, PembelianbarangState> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  PembelianbarangBloc() : super(const PembelianbarangState.initial()) {
    on<PembelianbarangEvent>((event, emit) async {
      await event.when(
        addPembelianBarang: (pembelianBarang, barangList) =>
            addPembelianBarang(pembelianBarang, barangList, emit),
        updatePembelianBarang: (pembelianBarang, pembelianBarangId) =>
            updatePembelianBarang(pembelianBarang, pembelianBarangId, emit),
        deletePembelianBarang: (String pembelianBarangId) =>
            deletePembelianBarang(pembelianBarangId, emit),
      );
    });
  }

  Future<void> addPembelianBarang(
    PembelianBarang pembelianBarang,
    List<Barang> barangList,
    Emitter<PembelianbarangState> emit,
  ) async {
    emit(const PembelianbarangState.loading());
    try {

      final saldo = await _hitungSaldo();
      if (saldo < pembelianBarang.totalHarga) {
        emit(const PembelianbarangState.failure('Saldo tidak mencukupi'));
        return;
      }
      // Add PembelianBarang to Firestore
      final docRef =
          await firestore.collection("pembelian").add(pembelianBarang.toJson());

      // Retrieve the document ID
      final pembelianId = docRef.id;

      // Add each Barang to the barangpembelian collection with reference to pembelianId
      for (final barang in barangList) {
        final barangData = barang.toJson();
        barangData['pembelianId'] = pembelianId;

        await firestore.runTransaction((transaction) async {
          // Add barang to barangpembelian collection
          transaction.set(
            firestore.collection("barangpembelian").doc(),
            barangData,
          );

          // Update stokbarang
          final stokBarangDoc =
              firestore.collection("stokbarang").doc(barangData['idBarang']);
          transaction.update(stokBarangDoc, {
            "hargaModal": barangData['harga'],
            "jumlah": FieldValue.increment(barangData['jumlah']),
          });
        });
      }

      // Add to pembukuan
      final pembukuanData = Pembukuan(
        idReferensi: pembelianId,
        referensi: 'pembelian',
        keterangan: 'pembelian',
        jumlah: -pembelianBarang.totalHarga,
        createdAt: DateTime.now(),
      ).toJson();
      await firestore.collection("pembukuan").add(pembukuanData);

      emit(const PembelianbarangState.success());
    } catch (e) {
      emit(PembelianbarangState.failure(e.toString()));
    }
  }

  Future<void> updatePembelianBarang(PembelianBarang pembelianBarang,
      String pembelianBarangId, Emitter<PembelianbarangState> emit) async {}
  Future<void> deletePembelianBarang(
      String pembelianBarangId, Emitter<PembelianbarangState> emit) async {}
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

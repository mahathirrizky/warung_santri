import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../models/models.dart';
import 'penjualanbarang_event.dart';
import 'penjualanbarang_state.dart';

class PenjualanbarangBloc
    extends Bloc<PenjualanbarangEvent, PenjualanbarangState> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  PenjualanbarangBloc() : super(const PenjualanbarangState.initial()) {
    on<PenjualanbarangEvent>((event, emit) async {
      await event.when(
        addPenjualanBarang: (penjualanBarang, barang) =>
            addPenjualanBarang(penjualanBarang, barang, emit),
        updatePenjualanBarang: (penjualanBarang, penjualanBarangId) =>
            updatePenjualanBarang(penjualanBarang, penjualanBarangId, emit),
        deletePenjualanBarang: (String penjualanBarangId) =>
            deletePenjualanBarang(penjualanBarangId, emit),
      );
    });
  }

  Future<void> addPenjualanBarang(
    PenjualanBarang penjualanBarang,
    List<Barang> barangList,
    Emitter<PenjualanbarangState> emit,
  ) async {
    emit(const PenjualanbarangState.loading());
    try {
      // Add penjualanBarang to Firestore
      final docRef =
          await firestore.collection("penjualan").add(penjualanBarang.toJson());

      // Retrieve the document ID
      final penjualanId = docRef.id;

      // Add each Barang to the barangpenjualan collection with reference to penjualanId
      for (final barang in barangList) {
        final barangData = barang.toJson();
        barangData['penjualanId'] = penjualanId;

        await firestore.runTransaction((transaction) async {
          // Add barang to barangpenjualan collection
          transaction.set(
            firestore.collection("barangpenjualan").doc(),
            barangData,
          );

          // Update stokbarang
          final stokBarangDoc =
              firestore.collection("stokbarang").doc(barangData['idBarang']);
          transaction.update(stokBarangDoc, {
            "hargaJual": barangData['harga'],
            "jumlah": FieldValue.increment(-barangData['jumlah']),
          });
        });
      }

      // Add to pembukuan
      final pembukuanData = Pembukuan(
        idReferensi: penjualanId,
        referensi: 'penjualan',
        keterangan: 'penjualan',
        jumlah: penjualanBarang.totalHarga,
        createdAt: DateTime.now(),
      ).toJson();
      await firestore.collection("pembukuan").add(pembukuanData);

      emit(const PenjualanbarangState.success());
    } catch (e) {
      emit(PenjualanbarangState.failure(e.toString()));
    }
  }

  Future<void> updatePenjualanBarang(PenjualanBarang penjualanBarang,
      String penjualanBarangId, Emitter<PenjualanbarangState> emit) async {}

  Future<void> deletePenjualanBarang(
      String penjualanBarangId, Emitter<PenjualanbarangState> emit) async {}

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

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/models.dart';

part 'penjualanbarang_event.freezed.dart';
@freezed
class PenjualanbarangEvent with _$PenjualanbarangEvent {
  const factory PenjualanbarangEvent.addPenjualanBarang(
      PenjualanBarang penjualanBarang, List<Barang> barang) = AddPenjualanBarangEvent;
  const factory PenjualanbarangEvent.updatePenjualanBarang(
      PenjualanBarang penjualanBarang, String penjualanBarangId) =
      UpdatePenjualanBarangEvent;
  const factory PenjualanbarangEvent.deletePenjualanBarang(
      String penjualanBarangId) = DeletePenjualanBarangEvent;
} 

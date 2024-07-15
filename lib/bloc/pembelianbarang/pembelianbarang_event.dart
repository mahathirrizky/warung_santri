import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/models.dart';

part 'pembelianbarang_event.freezed.dart';

@freezed
abstract class PembelianbarangEvent with _$PembelianbarangEvent {
  const factory PembelianbarangEvent.addPembelianBarang(
      PembelianBarang pembelianBarang, List<Barang> barang) = AddPembelianBarangEvent;
  const factory PembelianbarangEvent.updatePembelianBarang(
      PembelianBarang pembelianBarang, String pembelianBarangId) =
      UpdatePembelianBarangEvent;
  const factory PembelianbarangEvent.deletePembelianBarang(
      String pembelianBarangId) = DeletePembelianBarangEvent;
}
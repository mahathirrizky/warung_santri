import 'package:freezed_annotation/freezed_annotation.dart';

part 'barang_model.freezed.dart';
part 'barang_model.g.dart';

@freezed
class Barang with _$Barang {
  const factory Barang({
    required String idBarang,
    required String nama,
    required int jumlah,
    required double harga,
  }) = _Barang;

  factory Barang.fromJson(Map<String, Object?> json) =>
      _$BarangFromJson(json);
}

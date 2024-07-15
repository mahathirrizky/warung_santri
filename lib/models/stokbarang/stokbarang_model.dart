import 'package:freezed_annotation/freezed_annotation.dart';

part 'stokbarang_model.freezed.dart';
part 'stokbarang_model.g.dart';

@freezed
class StokBarang with _$StokBarang {
  const factory StokBarang({
    required String nama,
    required int jumlah,
    required String deskripsi,
    required String barcode,
    required double hargaModal,
    required double hargaJual,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StokBarang;

  factory StokBarang.fromJson(Map<String, Object?> json) =>
      _$StokBarangFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'penjualanbarang_model.freezed.dart';
part 'penjualanbarang_model.g.dart';

@freezed
class PenjualanBarang with _$PenjualanBarang {
  const factory PenjualanBarang({
    required double totalHarga,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PenjualanBarang;

  factory PenjualanBarang.fromJson(Map<String, Object?> json) =>
      _$PenjualanBarangFromJson(json);
}

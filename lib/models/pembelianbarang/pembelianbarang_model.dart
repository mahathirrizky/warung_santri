import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembelianbarang_model.freezed.dart';
part 'pembelianbarang_model.g.dart';

@freezed
class PembelianBarang with _$PembelianBarang {
  const factory PembelianBarang({
    required double totalHarga,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PembelianBarang;

  factory PembelianBarang.fromJson(Map<String, Object?> json) =>
      _$PembelianBarangFromJson(json);
}

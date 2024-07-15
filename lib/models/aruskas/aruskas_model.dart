import 'package:freezed_annotation/freezed_annotation.dart';

part 'aruskas_model.freezed.dart';
part 'aruskas_model.g.dart';

@freezed
abstract class ArusKas with _$ArusKas {
  const factory ArusKas({
    String? id,
    required String jenisTransaksi,
    required String keterangan,
    required double jumlah,
    required DateTime createdAt,
  }) = _ArusKas;

  factory ArusKas.fromJson(Map<String, dynamic> json) => _$ArusKasFromJson(json);
}

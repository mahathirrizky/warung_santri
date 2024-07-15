import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembukuan_model.freezed.dart';
part 'pembukuan_model.g.dart';

@freezed
abstract class Pembukuan with _$Pembukuan {
  const factory Pembukuan({
    required String keterangan,
    required String idReferensi,
    required String referensi,
    required double jumlah,
    required DateTime createdAt,
  }) = _Pembukuan;

  factory Pembukuan.fromJson(Map<String, dynamic> json) =>
      _$PembukuanFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'laporankeuangan_model.freezed.dart';
part 'laporankeuangan_model.g.dart';

@freezed
class LaporanKeuangan with _$LaporanKeuangan {
  const factory LaporanKeuangan({
    required DateTime createdAt,
    required String type,
    required dynamic item,
  }) = _LaporanKeuangan;

  factory LaporanKeuangan.fromJson(Map<String, dynamic> json) =>
      _$LaporanKeuanganFromJson(json);
}

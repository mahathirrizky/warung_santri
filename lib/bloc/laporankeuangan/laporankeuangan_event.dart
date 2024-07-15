import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/models.dart';
part 'laporankeuangan_event.freezed.dart';
@freezed
class LaporankeuanganEvent with _$LaporankeuanganEvent {
  const factory LaporankeuanganEvent.getRangeLaporanKeuangan(DateTime startDate, DateTime endDate) = GetRangeLaporanKeuangan;
  const factory LaporankeuanganEvent.convertPDF(List<LaporanKeuangan> laporanKeuangan) = ConvertPDF;
}
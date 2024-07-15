import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/models.dart';

part 'pembukuan_event.freezed.dart';

@freezed
class PembukuanEvent with _$PembukuanEvent {
  const factory PembukuanEvent.getPembukuan() = GetPembukuan;
  const factory PembukuanEvent.convertPDF(Map<DateTime, List<Pembukuan>> pembukuan) = ConvertPDF;
}
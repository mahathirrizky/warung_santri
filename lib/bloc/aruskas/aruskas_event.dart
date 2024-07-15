import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/models.dart';

part 'aruskas_event.freezed.dart';
@freezed
class AruskasEvent with _$AruskasEvent {
  const factory AruskasEvent.getRangeArusKas(DateTime startDate, DateTime endDate) = GetRangeArusKasEvent;
  const factory AruskasEvent.addArusKas(ArusKas arusKas) = AddArusKasEvent;
  const factory AruskasEvent.updateArusKas(ArusKas arusKas, String arusKasId) = UpdateArusKasEvent;
  const factory AruskasEvent.deleteArusKas(String arusKasId) = DeleteArusKasEvent;
}
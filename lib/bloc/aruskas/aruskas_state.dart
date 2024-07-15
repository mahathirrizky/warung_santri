import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warung_santri/models/models.dart';

part 'aruskas_state.freezed.dart';

@freezed
class AruskasState with _$AruskasState {
  const factory AruskasState.initial() = _Initial;
  const factory AruskasState.loading() = _Loading;
  const factory AruskasState.success(List<ArusKas> arusKas) = _Success;
  const factory AruskasState.failure(String error) = _Failure;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warung_santri/models/models.dart';



part 'pembukuan_state.freezed.dart';
@freezed
class PembukuanState with _$PembukuanState {
  const factory PembukuanState.initial() = _Initial;
  const factory PembukuanState.loading() = _Loading;
  const factory PembukuanState.success(List<Pembukuan> pembukuan) = _Success;
  const factory PembukuanState.failure(String error) = _Failure;
}

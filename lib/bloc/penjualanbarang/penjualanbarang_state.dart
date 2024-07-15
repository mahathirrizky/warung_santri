import 'package:freezed_annotation/freezed_annotation.dart';

part 'penjualanbarang_state.freezed.dart';
@freezed
class PenjualanbarangState with _$PenjualanbarangState {
  const factory PenjualanbarangState.initial() = _Initial;
  const factory PenjualanbarangState.loading() = _Loading;
  const factory PenjualanbarangState.success() = _Success;
  const factory PenjualanbarangState.failure(String error) = _Failure;
}

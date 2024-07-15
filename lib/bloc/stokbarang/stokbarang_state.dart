import 'package:freezed_annotation/freezed_annotation.dart';

part 'stokbarang_state.freezed.dart';

@freezed
abstract class StokbarangState with _$StokbarangState {
  const factory StokbarangState.initial() = StokbarangInitial;
  const factory StokbarangState.loading() = StokbarangLoading;
  const factory StokbarangState.success() = StokbarangSuccess;
  const factory StokbarangState.failure(String error) = StokbarangFailure;
}

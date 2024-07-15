import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembelianbarang_state.freezed.dart';

@freezed
abstract class PembelianbarangState with _$PembelianbarangState {
  const factory PembelianbarangState.initial() = _Initial;
  const factory PembelianbarangState.loading() = _Loading;
  const factory PembelianbarangState.success() = _Success;
  const factory PembelianbarangState.failure(String error) = _Failure;
}
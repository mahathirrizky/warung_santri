import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warung_santri/models/models.dart';


part 'laporankeuangan_state.freezed.dart';
@freezed
class LaporankeuanganState with _$LaporankeuanganState {
  const factory LaporankeuanganState.initial() = _Initial;
  const factory LaporankeuanganState.loading() = _Loading;
  const factory LaporankeuanganState.success(List<LaporanKeuangan> laporanKeuangan) = _Success;
  const factory LaporankeuanganState.failure(String error) = _Failure;
}

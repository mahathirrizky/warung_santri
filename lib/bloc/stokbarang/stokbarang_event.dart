import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/models.dart';

part 'stokbarang_event.freezed.dart';

@freezed
abstract class StokbarangEvent with _$StokbarangEvent {
  const factory StokbarangEvent.addStokBarang(StokBarang stokBarang) = AddStokBarangEvent;
  const factory StokbarangEvent.updateStokBarang(StokBarang stokBarang, String stokBarangId) = UpdateStokBarangEvent;
  const factory StokbarangEvent.deleteStokBarang(String stokBarangId) = DeleteStokBarangEvent;
}

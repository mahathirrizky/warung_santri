// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laporankeuangan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaporanKeuanganImpl _$$LaporanKeuanganImplFromJson(
        Map<String, dynamic> json) =>
    _$LaporanKeuanganImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      item: json['item'],
    );

Map<String, dynamic> _$$LaporanKeuanganImplToJson(
        _$LaporanKeuanganImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
      'item': instance.item,
    };

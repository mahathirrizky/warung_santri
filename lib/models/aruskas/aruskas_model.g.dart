// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aruskas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArusKasImpl _$$ArusKasImplFromJson(Map<String, dynamic> json) =>
    _$ArusKasImpl(
      id: json['id'] as String?,
      jenisTransaksi: json['jenisTransaksi'] as String,
      keterangan: json['keterangan'] as String,
      jumlah: (json['jumlah'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ArusKasImplToJson(_$ArusKasImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jenisTransaksi': instance.jenisTransaksi,
      'keterangan': instance.keterangan,
      'jumlah': instance.jumlah,
      'createdAt': instance.createdAt.toIso8601String(),
    };

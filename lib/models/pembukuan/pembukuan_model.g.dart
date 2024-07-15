// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembukuan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PembukuanImpl _$$PembukuanImplFromJson(Map<String, dynamic> json) =>
    _$PembukuanImpl(
      keterangan: json['keterangan'] as String,
      idReferensi: json['idReferensi'] as String,
      referensi: json['referensi'] as String,
      jumlah: (json['jumlah'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PembukuanImplToJson(_$PembukuanImpl instance) =>
    <String, dynamic>{
      'keterangan': instance.keterangan,
      'idReferensi': instance.idReferensi,
      'referensi': instance.referensi,
      'jumlah': instance.jumlah,
      'createdAt': instance.createdAt.toIso8601String(),
    };

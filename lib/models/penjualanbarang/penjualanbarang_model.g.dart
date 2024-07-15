// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'penjualanbarang_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PenjualanBarangImpl _$$PenjualanBarangImplFromJson(
        Map<String, dynamic> json) =>
    _$PenjualanBarangImpl(
      totalHarga: (json['totalHarga'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PenjualanBarangImplToJson(
        _$PenjualanBarangImpl instance) =>
    <String, dynamic>{
      'totalHarga': instance.totalHarga,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pembelianbarang_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PembelianBarangImpl _$$PembelianBarangImplFromJson(
        Map<String, dynamic> json) =>
    _$PembelianBarangImpl(
      totalHarga: (json['totalHarga'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PembelianBarangImplToJson(
        _$PembelianBarangImpl instance) =>
    <String, dynamic>{
      'totalHarga': instance.totalHarga,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

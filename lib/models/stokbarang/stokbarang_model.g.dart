// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stokbarang_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StokBarangImpl _$$StokBarangImplFromJson(Map<String, dynamic> json) =>
    _$StokBarangImpl(
      nama: json['nama'] as String,
      jumlah: (json['jumlah'] as num).toInt(),
      deskripsi: json['deskripsi'] as String,
      barcode: json['barcode'] as String,
      hargaModal: (json['hargaModal'] as num).toDouble(),
      hargaJual: (json['hargaJual'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$StokBarangImplToJson(_$StokBarangImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'jumlah': instance.jumlah,
      'deskripsi': instance.deskripsi,
      'barcode': instance.barcode,
      'hargaModal': instance.hargaModal,
      'hargaJual': instance.hargaJual,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

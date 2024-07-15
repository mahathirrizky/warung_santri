// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barang_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarangImpl _$$BarangImplFromJson(Map<String, dynamic> json) => _$BarangImpl(
      idBarang: json['idBarang'] as String,
      nama: json['nama'] as String,
      jumlah: (json['jumlah'] as num).toInt(),
      harga: (json['harga'] as num).toDouble(),
    );

Map<String, dynamic> _$$BarangImplToJson(_$BarangImpl instance) =>
    <String, dynamic>{
      'idBarang': instance.idBarang,
      'nama': instance.nama,
      'jumlah': instance.jumlah,
      'harga': instance.harga,
    };

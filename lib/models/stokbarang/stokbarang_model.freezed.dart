// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stokbarang_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StokBarang _$StokBarangFromJson(Map<String, dynamic> json) {
  return _StokBarang.fromJson(json);
}

/// @nodoc
mixin _$StokBarang {
  String get nama => throw _privateConstructorUsedError;
  int get jumlah => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  double get hargaModal => throw _privateConstructorUsedError;
  double get hargaJual => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StokBarangCopyWith<StokBarang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StokBarangCopyWith<$Res> {
  factory $StokBarangCopyWith(
          StokBarang value, $Res Function(StokBarang) then) =
      _$StokBarangCopyWithImpl<$Res, StokBarang>;
  @useResult
  $Res call(
      {String nama,
      int jumlah,
      String deskripsi,
      String barcode,
      double hargaModal,
      double hargaJual,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$StokBarangCopyWithImpl<$Res, $Val extends StokBarang>
    implements $StokBarangCopyWith<$Res> {
  _$StokBarangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
    Object? jumlah = null,
    Object? deskripsi = null,
    Object? barcode = null,
    Object? hargaModal = null,
    Object? hargaJual = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah: null == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      hargaModal: null == hargaModal
          ? _value.hargaModal
          : hargaModal // ignore: cast_nullable_to_non_nullable
              as double,
      hargaJual: null == hargaJual
          ? _value.hargaJual
          : hargaJual // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StokBarangImplCopyWith<$Res>
    implements $StokBarangCopyWith<$Res> {
  factory _$$StokBarangImplCopyWith(
          _$StokBarangImpl value, $Res Function(_$StokBarangImpl) then) =
      __$$StokBarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nama,
      int jumlah,
      String deskripsi,
      String barcode,
      double hargaModal,
      double hargaJual,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$StokBarangImplCopyWithImpl<$Res>
    extends _$StokBarangCopyWithImpl<$Res, _$StokBarangImpl>
    implements _$$StokBarangImplCopyWith<$Res> {
  __$$StokBarangImplCopyWithImpl(
      _$StokBarangImpl _value, $Res Function(_$StokBarangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
    Object? jumlah = null,
    Object? deskripsi = null,
    Object? barcode = null,
    Object? hargaModal = null,
    Object? hargaJual = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$StokBarangImpl(
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah: null == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      hargaModal: null == hargaModal
          ? _value.hargaModal
          : hargaModal // ignore: cast_nullable_to_non_nullable
              as double,
      hargaJual: null == hargaJual
          ? _value.hargaJual
          : hargaJual // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StokBarangImpl implements _StokBarang {
  const _$StokBarangImpl(
      {required this.nama,
      required this.jumlah,
      required this.deskripsi,
      required this.barcode,
      required this.hargaModal,
      required this.hargaJual,
      required this.createdAt,
      required this.updatedAt});

  factory _$StokBarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$StokBarangImplFromJson(json);

  @override
  final String nama;
  @override
  final int jumlah;
  @override
  final String deskripsi;
  @override
  final String barcode;
  @override
  final double hargaModal;
  @override
  final double hargaJual;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'StokBarang(nama: $nama, jumlah: $jumlah, deskripsi: $deskripsi, barcode: $barcode, hargaModal: $hargaModal, hargaJual: $hargaJual, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StokBarangImpl &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.jumlah, jumlah) || other.jumlah == jumlah) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.hargaModal, hargaModal) ||
                other.hargaModal == hargaModal) &&
            (identical(other.hargaJual, hargaJual) ||
                other.hargaJual == hargaJual) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nama, jumlah, deskripsi, barcode,
      hargaModal, hargaJual, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StokBarangImplCopyWith<_$StokBarangImpl> get copyWith =>
      __$$StokBarangImplCopyWithImpl<_$StokBarangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StokBarangImplToJson(
      this,
    );
  }
}

abstract class _StokBarang implements StokBarang {
  const factory _StokBarang(
      {required final String nama,
      required final int jumlah,
      required final String deskripsi,
      required final String barcode,
      required final double hargaModal,
      required final double hargaJual,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$StokBarangImpl;

  factory _StokBarang.fromJson(Map<String, dynamic> json) =
      _$StokBarangImpl.fromJson;

  @override
  String get nama;
  @override
  int get jumlah;
  @override
  String get deskripsi;
  @override
  String get barcode;
  @override
  double get hargaModal;
  @override
  double get hargaJual;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$StokBarangImplCopyWith<_$StokBarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

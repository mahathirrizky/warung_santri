// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aruskas_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArusKas _$ArusKasFromJson(Map<String, dynamic> json) {
  return _ArusKas.fromJson(json);
}

/// @nodoc
mixin _$ArusKas {
  String? get id => throw _privateConstructorUsedError;
  String get jenisTransaksi => throw _privateConstructorUsedError;
  String get keterangan => throw _privateConstructorUsedError;
  double get jumlah => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArusKasCopyWith<ArusKas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArusKasCopyWith<$Res> {
  factory $ArusKasCopyWith(ArusKas value, $Res Function(ArusKas) then) =
      _$ArusKasCopyWithImpl<$Res, ArusKas>;
  @useResult
  $Res call(
      {String? id,
      String jenisTransaksi,
      String keterangan,
      double jumlah,
      DateTime createdAt});
}

/// @nodoc
class _$ArusKasCopyWithImpl<$Res, $Val extends ArusKas>
    implements $ArusKasCopyWith<$Res> {
  _$ArusKasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? jenisTransaksi = null,
    Object? keterangan = null,
    Object? jumlah = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisTransaksi: null == jenisTransaksi
          ? _value.jenisTransaksi
          : jenisTransaksi // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah: null == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArusKasImplCopyWith<$Res> implements $ArusKasCopyWith<$Res> {
  factory _$$ArusKasImplCopyWith(
          _$ArusKasImpl value, $Res Function(_$ArusKasImpl) then) =
      __$$ArusKasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String jenisTransaksi,
      String keterangan,
      double jumlah,
      DateTime createdAt});
}

/// @nodoc
class __$$ArusKasImplCopyWithImpl<$Res>
    extends _$ArusKasCopyWithImpl<$Res, _$ArusKasImpl>
    implements _$$ArusKasImplCopyWith<$Res> {
  __$$ArusKasImplCopyWithImpl(
      _$ArusKasImpl _value, $Res Function(_$ArusKasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? jenisTransaksi = null,
    Object? keterangan = null,
    Object? jumlah = null,
    Object? createdAt = null,
  }) {
    return _then(_$ArusKasImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisTransaksi: null == jenisTransaksi
          ? _value.jenisTransaksi
          : jenisTransaksi // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah: null == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArusKasImpl implements _ArusKas {
  const _$ArusKasImpl(
      {this.id,
      required this.jenisTransaksi,
      required this.keterangan,
      required this.jumlah,
      required this.createdAt});

  factory _$ArusKasImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArusKasImplFromJson(json);

  @override
  final String? id;
  @override
  final String jenisTransaksi;
  @override
  final String keterangan;
  @override
  final double jumlah;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ArusKas(id: $id, jenisTransaksi: $jenisTransaksi, keterangan: $keterangan, jumlah: $jumlah, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArusKasImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jenisTransaksi, jenisTransaksi) ||
                other.jenisTransaksi == jenisTransaksi) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.jumlah, jumlah) || other.jumlah == jumlah) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, jenisTransaksi, keterangan, jumlah, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArusKasImplCopyWith<_$ArusKasImpl> get copyWith =>
      __$$ArusKasImplCopyWithImpl<_$ArusKasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArusKasImplToJson(
      this,
    );
  }
}

abstract class _ArusKas implements ArusKas {
  const factory _ArusKas(
      {final String? id,
      required final String jenisTransaksi,
      required final String keterangan,
      required final double jumlah,
      required final DateTime createdAt}) = _$ArusKasImpl;

  factory _ArusKas.fromJson(Map<String, dynamic> json) = _$ArusKasImpl.fromJson;

  @override
  String? get id;
  @override
  String get jenisTransaksi;
  @override
  String get keterangan;
  @override
  double get jumlah;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ArusKasImplCopyWith<_$ArusKasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

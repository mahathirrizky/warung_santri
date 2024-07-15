// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pembukuan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pembukuan _$PembukuanFromJson(Map<String, dynamic> json) {
  return _Pembukuan.fromJson(json);
}

/// @nodoc
mixin _$Pembukuan {
  String get keterangan => throw _privateConstructorUsedError;
  String get idReferensi => throw _privateConstructorUsedError;
  String get referensi => throw _privateConstructorUsedError;
  double get jumlah => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PembukuanCopyWith<Pembukuan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembukuanCopyWith<$Res> {
  factory $PembukuanCopyWith(Pembukuan value, $Res Function(Pembukuan) then) =
      _$PembukuanCopyWithImpl<$Res, Pembukuan>;
  @useResult
  $Res call(
      {String keterangan,
      String idReferensi,
      String referensi,
      double jumlah,
      DateTime createdAt});
}

/// @nodoc
class _$PembukuanCopyWithImpl<$Res, $Val extends Pembukuan>
    implements $PembukuanCopyWith<$Res> {
  _$PembukuanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keterangan = null,
    Object? idReferensi = null,
    Object? referensi = null,
    Object? jumlah = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      idReferensi: null == idReferensi
          ? _value.idReferensi
          : idReferensi // ignore: cast_nullable_to_non_nullable
              as String,
      referensi: null == referensi
          ? _value.referensi
          : referensi // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PembukuanImplCopyWith<$Res>
    implements $PembukuanCopyWith<$Res> {
  factory _$$PembukuanImplCopyWith(
          _$PembukuanImpl value, $Res Function(_$PembukuanImpl) then) =
      __$$PembukuanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String keterangan,
      String idReferensi,
      String referensi,
      double jumlah,
      DateTime createdAt});
}

/// @nodoc
class __$$PembukuanImplCopyWithImpl<$Res>
    extends _$PembukuanCopyWithImpl<$Res, _$PembukuanImpl>
    implements _$$PembukuanImplCopyWith<$Res> {
  __$$PembukuanImplCopyWithImpl(
      _$PembukuanImpl _value, $Res Function(_$PembukuanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keterangan = null,
    Object? idReferensi = null,
    Object? referensi = null,
    Object? jumlah = null,
    Object? createdAt = null,
  }) {
    return _then(_$PembukuanImpl(
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      idReferensi: null == idReferensi
          ? _value.idReferensi
          : idReferensi // ignore: cast_nullable_to_non_nullable
              as String,
      referensi: null == referensi
          ? _value.referensi
          : referensi // ignore: cast_nullable_to_non_nullable
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
class _$PembukuanImpl implements _Pembukuan {
  const _$PembukuanImpl(
      {required this.keterangan,
      required this.idReferensi,
      required this.referensi,
      required this.jumlah,
      required this.createdAt});

  factory _$PembukuanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PembukuanImplFromJson(json);

  @override
  final String keterangan;
  @override
  final String idReferensi;
  @override
  final String referensi;
  @override
  final double jumlah;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Pembukuan(keterangan: $keterangan, idReferensi: $idReferensi, referensi: $referensi, jumlah: $jumlah, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PembukuanImpl &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.idReferensi, idReferensi) ||
                other.idReferensi == idReferensi) &&
            (identical(other.referensi, referensi) ||
                other.referensi == referensi) &&
            (identical(other.jumlah, jumlah) || other.jumlah == jumlah) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, keterangan, idReferensi, referensi, jumlah, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PembukuanImplCopyWith<_$PembukuanImpl> get copyWith =>
      __$$PembukuanImplCopyWithImpl<_$PembukuanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PembukuanImplToJson(
      this,
    );
  }
}

abstract class _Pembukuan implements Pembukuan {
  const factory _Pembukuan(
      {required final String keterangan,
      required final String idReferensi,
      required final String referensi,
      required final double jumlah,
      required final DateTime createdAt}) = _$PembukuanImpl;

  factory _Pembukuan.fromJson(Map<String, dynamic> json) =
      _$PembukuanImpl.fromJson;

  @override
  String get keterangan;
  @override
  String get idReferensi;
  @override
  String get referensi;
  @override
  double get jumlah;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PembukuanImplCopyWith<_$PembukuanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

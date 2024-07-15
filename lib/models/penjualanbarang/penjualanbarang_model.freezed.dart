// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'penjualanbarang_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PenjualanBarang _$PenjualanBarangFromJson(Map<String, dynamic> json) {
  return _PenjualanBarang.fromJson(json);
}

/// @nodoc
mixin _$PenjualanBarang {
  double get totalHarga => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PenjualanBarangCopyWith<PenjualanBarang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenjualanBarangCopyWith<$Res> {
  factory $PenjualanBarangCopyWith(
          PenjualanBarang value, $Res Function(PenjualanBarang) then) =
      _$PenjualanBarangCopyWithImpl<$Res, PenjualanBarang>;
  @useResult
  $Res call({double totalHarga, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$PenjualanBarangCopyWithImpl<$Res, $Val extends PenjualanBarang>
    implements $PenjualanBarangCopyWith<$Res> {
  _$PenjualanBarangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalHarga = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      totalHarga: null == totalHarga
          ? _value.totalHarga
          : totalHarga // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PenjualanBarangImplCopyWith<$Res>
    implements $PenjualanBarangCopyWith<$Res> {
  factory _$$PenjualanBarangImplCopyWith(_$PenjualanBarangImpl value,
          $Res Function(_$PenjualanBarangImpl) then) =
      __$$PenjualanBarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double totalHarga, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$$PenjualanBarangImplCopyWithImpl<$Res>
    extends _$PenjualanBarangCopyWithImpl<$Res, _$PenjualanBarangImpl>
    implements _$$PenjualanBarangImplCopyWith<$Res> {
  __$$PenjualanBarangImplCopyWithImpl(
      _$PenjualanBarangImpl _value, $Res Function(_$PenjualanBarangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalHarga = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PenjualanBarangImpl(
      totalHarga: null == totalHarga
          ? _value.totalHarga
          : totalHarga // ignore: cast_nullable_to_non_nullable
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
class _$PenjualanBarangImpl implements _PenjualanBarang {
  const _$PenjualanBarangImpl(
      {required this.totalHarga,
      required this.createdAt,
      required this.updatedAt});

  factory _$PenjualanBarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$PenjualanBarangImplFromJson(json);

  @override
  final double totalHarga;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'PenjualanBarang(totalHarga: $totalHarga, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenjualanBarangImpl &&
            (identical(other.totalHarga, totalHarga) ||
                other.totalHarga == totalHarga) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalHarga, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PenjualanBarangImplCopyWith<_$PenjualanBarangImpl> get copyWith =>
      __$$PenjualanBarangImplCopyWithImpl<_$PenjualanBarangImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PenjualanBarangImplToJson(
      this,
    );
  }
}

abstract class _PenjualanBarang implements PenjualanBarang {
  const factory _PenjualanBarang(
      {required final double totalHarga,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$PenjualanBarangImpl;

  factory _PenjualanBarang.fromJson(Map<String, dynamic> json) =
      _$PenjualanBarangImpl.fromJson;

  @override
  double get totalHarga;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PenjualanBarangImplCopyWith<_$PenjualanBarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

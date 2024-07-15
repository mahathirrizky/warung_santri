// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pembelianbarang_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PembelianBarang _$PembelianBarangFromJson(Map<String, dynamic> json) {
  return _PembelianBarang.fromJson(json);
}

/// @nodoc
mixin _$PembelianBarang {
  double get totalHarga => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PembelianBarangCopyWith<PembelianBarang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembelianBarangCopyWith<$Res> {
  factory $PembelianBarangCopyWith(
          PembelianBarang value, $Res Function(PembelianBarang) then) =
      _$PembelianBarangCopyWithImpl<$Res, PembelianBarang>;
  @useResult
  $Res call({double totalHarga, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$PembelianBarangCopyWithImpl<$Res, $Val extends PembelianBarang>
    implements $PembelianBarangCopyWith<$Res> {
  _$PembelianBarangCopyWithImpl(this._value, this._then);

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
abstract class _$$PembelianBarangImplCopyWith<$Res>
    implements $PembelianBarangCopyWith<$Res> {
  factory _$$PembelianBarangImplCopyWith(_$PembelianBarangImpl value,
          $Res Function(_$PembelianBarangImpl) then) =
      __$$PembelianBarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double totalHarga, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$$PembelianBarangImplCopyWithImpl<$Res>
    extends _$PembelianBarangCopyWithImpl<$Res, _$PembelianBarangImpl>
    implements _$$PembelianBarangImplCopyWith<$Res> {
  __$$PembelianBarangImplCopyWithImpl(
      _$PembelianBarangImpl _value, $Res Function(_$PembelianBarangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalHarga = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PembelianBarangImpl(
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
class _$PembelianBarangImpl implements _PembelianBarang {
  const _$PembelianBarangImpl(
      {required this.totalHarga,
      required this.createdAt,
      required this.updatedAt});

  factory _$PembelianBarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$PembelianBarangImplFromJson(json);

  @override
  final double totalHarga;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'PembelianBarang(totalHarga: $totalHarga, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PembelianBarangImpl &&
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
  _$$PembelianBarangImplCopyWith<_$PembelianBarangImpl> get copyWith =>
      __$$PembelianBarangImplCopyWithImpl<_$PembelianBarangImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PembelianBarangImplToJson(
      this,
    );
  }
}

abstract class _PembelianBarang implements PembelianBarang {
  const factory _PembelianBarang(
      {required final double totalHarga,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$PembelianBarangImpl;

  factory _PembelianBarang.fromJson(Map<String, dynamic> json) =
      _$PembelianBarangImpl.fromJson;

  @override
  double get totalHarga;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PembelianBarangImplCopyWith<_$PembelianBarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

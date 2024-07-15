// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporankeuangan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LaporanKeuangan _$LaporanKeuanganFromJson(Map<String, dynamic> json) {
  return _LaporanKeuangan.fromJson(json);
}

/// @nodoc
mixin _$LaporanKeuangan {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  dynamic get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaporanKeuanganCopyWith<LaporanKeuangan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanKeuanganCopyWith<$Res> {
  factory $LaporanKeuanganCopyWith(
          LaporanKeuangan value, $Res Function(LaporanKeuangan) then) =
      _$LaporanKeuanganCopyWithImpl<$Res, LaporanKeuangan>;
  @useResult
  $Res call({DateTime createdAt, String type, dynamic item});
}

/// @nodoc
class _$LaporanKeuanganCopyWithImpl<$Res, $Val extends LaporanKeuangan>
    implements $LaporanKeuanganCopyWith<$Res> {
  _$LaporanKeuanganCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? type = null,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaporanKeuanganImplCopyWith<$Res>
    implements $LaporanKeuanganCopyWith<$Res> {
  factory _$$LaporanKeuanganImplCopyWith(_$LaporanKeuanganImpl value,
          $Res Function(_$LaporanKeuanganImpl) then) =
      __$$LaporanKeuanganImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String type, dynamic item});
}

/// @nodoc
class __$$LaporanKeuanganImplCopyWithImpl<$Res>
    extends _$LaporanKeuanganCopyWithImpl<$Res, _$LaporanKeuanganImpl>
    implements _$$LaporanKeuanganImplCopyWith<$Res> {
  __$$LaporanKeuanganImplCopyWithImpl(
      _$LaporanKeuanganImpl _value, $Res Function(_$LaporanKeuanganImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? type = null,
    Object? item = freezed,
  }) {
    return _then(_$LaporanKeuanganImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaporanKeuanganImpl implements _LaporanKeuangan {
  const _$LaporanKeuanganImpl(
      {required this.createdAt, required this.type, required this.item});

  factory _$LaporanKeuanganImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanKeuanganImplFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final String type;
  @override
  final dynamic item;

  @override
  String toString() {
    return 'LaporanKeuangan(createdAt: $createdAt, type: $type, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanKeuanganImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, type, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanKeuanganImplCopyWith<_$LaporanKeuanganImpl> get copyWith =>
      __$$LaporanKeuanganImplCopyWithImpl<_$LaporanKeuanganImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanKeuanganImplToJson(
      this,
    );
  }
}

abstract class _LaporanKeuangan implements LaporanKeuangan {
  const factory _LaporanKeuangan(
      {required final DateTime createdAt,
      required final String type,
      required final dynamic item}) = _$LaporanKeuanganImpl;

  factory _LaporanKeuangan.fromJson(Map<String, dynamic> json) =
      _$LaporanKeuanganImpl.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get type;
  @override
  dynamic get item;
  @override
  @JsonKey(ignore: true)
  _$$LaporanKeuanganImplCopyWith<_$LaporanKeuanganImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

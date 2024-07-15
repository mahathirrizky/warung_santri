// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pembukuan_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PembukuanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPembukuan,
    required TResult Function(Map<DateTime, List<Pembukuan>> pembukuan)
        convertPDF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPembukuan,
    TResult? Function(Map<DateTime, List<Pembukuan>> pembukuan)? convertPDF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPembukuan,
    TResult Function(Map<DateTime, List<Pembukuan>> pembukuan)? convertPDF,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPembukuan value) getPembukuan,
    required TResult Function(ConvertPDF value) convertPDF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPembukuan value)? getPembukuan,
    TResult? Function(ConvertPDF value)? convertPDF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPembukuan value)? getPembukuan,
    TResult Function(ConvertPDF value)? convertPDF,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembukuanEventCopyWith<$Res> {
  factory $PembukuanEventCopyWith(
          PembukuanEvent value, $Res Function(PembukuanEvent) then) =
      _$PembukuanEventCopyWithImpl<$Res, PembukuanEvent>;
}

/// @nodoc
class _$PembukuanEventCopyWithImpl<$Res, $Val extends PembukuanEvent>
    implements $PembukuanEventCopyWith<$Res> {
  _$PembukuanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPembukuanImplCopyWith<$Res> {
  factory _$$GetPembukuanImplCopyWith(
          _$GetPembukuanImpl value, $Res Function(_$GetPembukuanImpl) then) =
      __$$GetPembukuanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPembukuanImplCopyWithImpl<$Res>
    extends _$PembukuanEventCopyWithImpl<$Res, _$GetPembukuanImpl>
    implements _$$GetPembukuanImplCopyWith<$Res> {
  __$$GetPembukuanImplCopyWithImpl(
      _$GetPembukuanImpl _value, $Res Function(_$GetPembukuanImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPembukuanImpl implements GetPembukuan {
  const _$GetPembukuanImpl();

  @override
  String toString() {
    return 'PembukuanEvent.getPembukuan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPembukuanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPembukuan,
    required TResult Function(Map<DateTime, List<Pembukuan>> pembukuan)
        convertPDF,
  }) {
    return getPembukuan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPembukuan,
    TResult? Function(Map<DateTime, List<Pembukuan>> pembukuan)? convertPDF,
  }) {
    return getPembukuan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPembukuan,
    TResult Function(Map<DateTime, List<Pembukuan>> pembukuan)? convertPDF,
    required TResult orElse(),
  }) {
    if (getPembukuan != null) {
      return getPembukuan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPembukuan value) getPembukuan,
    required TResult Function(ConvertPDF value) convertPDF,
  }) {
    return getPembukuan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPembukuan value)? getPembukuan,
    TResult? Function(ConvertPDF value)? convertPDF,
  }) {
    return getPembukuan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPembukuan value)? getPembukuan,
    TResult Function(ConvertPDF value)? convertPDF,
    required TResult orElse(),
  }) {
    if (getPembukuan != null) {
      return getPembukuan(this);
    }
    return orElse();
  }
}

abstract class GetPembukuan implements PembukuanEvent {
  const factory GetPembukuan() = _$GetPembukuanImpl;
}

/// @nodoc
abstract class _$$ConvertPDFImplCopyWith<$Res> {
  factory _$$ConvertPDFImplCopyWith(
          _$ConvertPDFImpl value, $Res Function(_$ConvertPDFImpl) then) =
      __$$ConvertPDFImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DateTime, List<Pembukuan>> pembukuan});
}

/// @nodoc
class __$$ConvertPDFImplCopyWithImpl<$Res>
    extends _$PembukuanEventCopyWithImpl<$Res, _$ConvertPDFImpl>
    implements _$$ConvertPDFImplCopyWith<$Res> {
  __$$ConvertPDFImplCopyWithImpl(
      _$ConvertPDFImpl _value, $Res Function(_$ConvertPDFImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pembukuan = null,
  }) {
    return _then(_$ConvertPDFImpl(
      null == pembukuan
          ? _value._pembukuan
          : pembukuan // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Pembukuan>>,
    ));
  }
}

/// @nodoc

class _$ConvertPDFImpl implements ConvertPDF {
  const _$ConvertPDFImpl(final Map<DateTime, List<Pembukuan>> pembukuan)
      : _pembukuan = pembukuan;

  final Map<DateTime, List<Pembukuan>> _pembukuan;
  @override
  Map<DateTime, List<Pembukuan>> get pembukuan {
    if (_pembukuan is EqualUnmodifiableMapView) return _pembukuan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pembukuan);
  }

  @override
  String toString() {
    return 'PembukuanEvent.convertPDF(pembukuan: $pembukuan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertPDFImpl &&
            const DeepCollectionEquality()
                .equals(other._pembukuan, _pembukuan));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pembukuan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertPDFImplCopyWith<_$ConvertPDFImpl> get copyWith =>
      __$$ConvertPDFImplCopyWithImpl<_$ConvertPDFImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPembukuan,
    required TResult Function(Map<DateTime, List<Pembukuan>> pembukuan)
        convertPDF,
  }) {
    return convertPDF(pembukuan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPembukuan,
    TResult? Function(Map<DateTime, List<Pembukuan>> pembukuan)? convertPDF,
  }) {
    return convertPDF?.call(pembukuan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPembukuan,
    TResult Function(Map<DateTime, List<Pembukuan>> pembukuan)? convertPDF,
    required TResult orElse(),
  }) {
    if (convertPDF != null) {
      return convertPDF(pembukuan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPembukuan value) getPembukuan,
    required TResult Function(ConvertPDF value) convertPDF,
  }) {
    return convertPDF(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPembukuan value)? getPembukuan,
    TResult? Function(ConvertPDF value)? convertPDF,
  }) {
    return convertPDF?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPembukuan value)? getPembukuan,
    TResult Function(ConvertPDF value)? convertPDF,
    required TResult orElse(),
  }) {
    if (convertPDF != null) {
      return convertPDF(this);
    }
    return orElse();
  }
}

abstract class ConvertPDF implements PembukuanEvent {
  const factory ConvertPDF(final Map<DateTime, List<Pembukuan>> pembukuan) =
      _$ConvertPDFImpl;

  Map<DateTime, List<Pembukuan>> get pembukuan;
  @JsonKey(ignore: true)
  _$$ConvertPDFImplCopyWith<_$ConvertPDFImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

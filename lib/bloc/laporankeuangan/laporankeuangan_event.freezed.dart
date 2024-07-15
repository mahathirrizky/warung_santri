// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporankeuangan_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LaporankeuanganEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate)
        getRangeLaporanKeuangan,
    required TResult Function(List<LaporanKeuangan> laporanKeuangan) convertPDF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, DateTime endDate)?
        getRangeLaporanKeuangan,
    TResult? Function(List<LaporanKeuangan> laporanKeuangan)? convertPDF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)?
        getRangeLaporanKeuangan,
    TResult Function(List<LaporanKeuangan> laporanKeuangan)? convertPDF,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRangeLaporanKeuangan value)
        getRangeLaporanKeuangan,
    required TResult Function(ConvertPDF value) convertPDF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRangeLaporanKeuangan value)? getRangeLaporanKeuangan,
    TResult? Function(ConvertPDF value)? convertPDF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRangeLaporanKeuangan value)? getRangeLaporanKeuangan,
    TResult Function(ConvertPDF value)? convertPDF,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporankeuanganEventCopyWith<$Res> {
  factory $LaporankeuanganEventCopyWith(LaporankeuanganEvent value,
          $Res Function(LaporankeuanganEvent) then) =
      _$LaporankeuanganEventCopyWithImpl<$Res, LaporankeuanganEvent>;
}

/// @nodoc
class _$LaporankeuanganEventCopyWithImpl<$Res,
        $Val extends LaporankeuanganEvent>
    implements $LaporankeuanganEventCopyWith<$Res> {
  _$LaporankeuanganEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRangeLaporanKeuanganImplCopyWith<$Res> {
  factory _$$GetRangeLaporanKeuanganImplCopyWith(
          _$GetRangeLaporanKeuanganImpl value,
          $Res Function(_$GetRangeLaporanKeuanganImpl) then) =
      __$$GetRangeLaporanKeuanganImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$GetRangeLaporanKeuanganImplCopyWithImpl<$Res>
    extends _$LaporankeuanganEventCopyWithImpl<$Res,
        _$GetRangeLaporanKeuanganImpl>
    implements _$$GetRangeLaporanKeuanganImplCopyWith<$Res> {
  __$$GetRangeLaporanKeuanganImplCopyWithImpl(
      _$GetRangeLaporanKeuanganImpl _value,
      $Res Function(_$GetRangeLaporanKeuanganImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$GetRangeLaporanKeuanganImpl(
      null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetRangeLaporanKeuanganImpl implements GetRangeLaporanKeuangan {
  const _$GetRangeLaporanKeuanganImpl(this.startDate, this.endDate);

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'LaporankeuanganEvent.getRangeLaporanKeuangan(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRangeLaporanKeuanganImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRangeLaporanKeuanganImplCopyWith<_$GetRangeLaporanKeuanganImpl>
      get copyWith => __$$GetRangeLaporanKeuanganImplCopyWithImpl<
          _$GetRangeLaporanKeuanganImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate)
        getRangeLaporanKeuangan,
    required TResult Function(List<LaporanKeuangan> laporanKeuangan) convertPDF,
  }) {
    return getRangeLaporanKeuangan(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, DateTime endDate)?
        getRangeLaporanKeuangan,
    TResult? Function(List<LaporanKeuangan> laporanKeuangan)? convertPDF,
  }) {
    return getRangeLaporanKeuangan?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)?
        getRangeLaporanKeuangan,
    TResult Function(List<LaporanKeuangan> laporanKeuangan)? convertPDF,
    required TResult orElse(),
  }) {
    if (getRangeLaporanKeuangan != null) {
      return getRangeLaporanKeuangan(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRangeLaporanKeuangan value)
        getRangeLaporanKeuangan,
    required TResult Function(ConvertPDF value) convertPDF,
  }) {
    return getRangeLaporanKeuangan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRangeLaporanKeuangan value)? getRangeLaporanKeuangan,
    TResult? Function(ConvertPDF value)? convertPDF,
  }) {
    return getRangeLaporanKeuangan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRangeLaporanKeuangan value)? getRangeLaporanKeuangan,
    TResult Function(ConvertPDF value)? convertPDF,
    required TResult orElse(),
  }) {
    if (getRangeLaporanKeuangan != null) {
      return getRangeLaporanKeuangan(this);
    }
    return orElse();
  }
}

abstract class GetRangeLaporanKeuangan implements LaporankeuanganEvent {
  const factory GetRangeLaporanKeuangan(
          final DateTime startDate, final DateTime endDate) =
      _$GetRangeLaporanKeuanganImpl;

  DateTime get startDate;
  DateTime get endDate;
  @JsonKey(ignore: true)
  _$$GetRangeLaporanKeuanganImplCopyWith<_$GetRangeLaporanKeuanganImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConvertPDFImplCopyWith<$Res> {
  factory _$$ConvertPDFImplCopyWith(
          _$ConvertPDFImpl value, $Res Function(_$ConvertPDFImpl) then) =
      __$$ConvertPDFImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LaporanKeuangan> laporanKeuangan});
}

/// @nodoc
class __$$ConvertPDFImplCopyWithImpl<$Res>
    extends _$LaporankeuanganEventCopyWithImpl<$Res, _$ConvertPDFImpl>
    implements _$$ConvertPDFImplCopyWith<$Res> {
  __$$ConvertPDFImplCopyWithImpl(
      _$ConvertPDFImpl _value, $Res Function(_$ConvertPDFImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laporanKeuangan = null,
  }) {
    return _then(_$ConvertPDFImpl(
      null == laporanKeuangan
          ? _value._laporanKeuangan
          : laporanKeuangan // ignore: cast_nullable_to_non_nullable
              as List<LaporanKeuangan>,
    ));
  }
}

/// @nodoc

class _$ConvertPDFImpl implements ConvertPDF {
  const _$ConvertPDFImpl(final List<LaporanKeuangan> laporanKeuangan)
      : _laporanKeuangan = laporanKeuangan;

  final List<LaporanKeuangan> _laporanKeuangan;
  @override
  List<LaporanKeuangan> get laporanKeuangan {
    if (_laporanKeuangan is EqualUnmodifiableListView) return _laporanKeuangan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_laporanKeuangan);
  }

  @override
  String toString() {
    return 'LaporankeuanganEvent.convertPDF(laporanKeuangan: $laporanKeuangan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertPDFImpl &&
            const DeepCollectionEquality()
                .equals(other._laporanKeuangan, _laporanKeuangan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_laporanKeuangan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertPDFImplCopyWith<_$ConvertPDFImpl> get copyWith =>
      __$$ConvertPDFImplCopyWithImpl<_$ConvertPDFImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate)
        getRangeLaporanKeuangan,
    required TResult Function(List<LaporanKeuangan> laporanKeuangan) convertPDF,
  }) {
    return convertPDF(laporanKeuangan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, DateTime endDate)?
        getRangeLaporanKeuangan,
    TResult? Function(List<LaporanKeuangan> laporanKeuangan)? convertPDF,
  }) {
    return convertPDF?.call(laporanKeuangan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)?
        getRangeLaporanKeuangan,
    TResult Function(List<LaporanKeuangan> laporanKeuangan)? convertPDF,
    required TResult orElse(),
  }) {
    if (convertPDF != null) {
      return convertPDF(laporanKeuangan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRangeLaporanKeuangan value)
        getRangeLaporanKeuangan,
    required TResult Function(ConvertPDF value) convertPDF,
  }) {
    return convertPDF(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRangeLaporanKeuangan value)? getRangeLaporanKeuangan,
    TResult? Function(ConvertPDF value)? convertPDF,
  }) {
    return convertPDF?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRangeLaporanKeuangan value)? getRangeLaporanKeuangan,
    TResult Function(ConvertPDF value)? convertPDF,
    required TResult orElse(),
  }) {
    if (convertPDF != null) {
      return convertPDF(this);
    }
    return orElse();
  }
}

abstract class ConvertPDF implements LaporankeuanganEvent {
  const factory ConvertPDF(final List<LaporanKeuangan> laporanKeuangan) =
      _$ConvertPDFImpl;

  List<LaporanKeuangan> get laporanKeuangan;
  @JsonKey(ignore: true)
  _$$ConvertPDFImplCopyWith<_$ConvertPDFImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

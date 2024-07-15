// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aruskas_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AruskasEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate)
        getRangeArusKas,
    required TResult Function(ArusKas arusKas) addArusKas,
    required TResult Function(ArusKas arusKas, String arusKasId) updateArusKas,
    required TResult Function(String arusKasId) deleteArusKas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult? Function(ArusKas arusKas)? addArusKas,
    TResult? Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult? Function(String arusKasId)? deleteArusKas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult Function(ArusKas arusKas)? addArusKas,
    TResult Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult Function(String arusKasId)? deleteArusKas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRangeArusKasEvent value) getRangeArusKas,
    required TResult Function(AddArusKasEvent value) addArusKas,
    required TResult Function(UpdateArusKasEvent value) updateArusKas,
    required TResult Function(DeleteArusKasEvent value) deleteArusKas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult? Function(AddArusKasEvent value)? addArusKas,
    TResult? Function(UpdateArusKasEvent value)? updateArusKas,
    TResult? Function(DeleteArusKasEvent value)? deleteArusKas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult Function(AddArusKasEvent value)? addArusKas,
    TResult Function(UpdateArusKasEvent value)? updateArusKas,
    TResult Function(DeleteArusKasEvent value)? deleteArusKas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AruskasEventCopyWith<$Res> {
  factory $AruskasEventCopyWith(
          AruskasEvent value, $Res Function(AruskasEvent) then) =
      _$AruskasEventCopyWithImpl<$Res, AruskasEvent>;
}

/// @nodoc
class _$AruskasEventCopyWithImpl<$Res, $Val extends AruskasEvent>
    implements $AruskasEventCopyWith<$Res> {
  _$AruskasEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRangeArusKasEventImplCopyWith<$Res> {
  factory _$$GetRangeArusKasEventImplCopyWith(_$GetRangeArusKasEventImpl value,
          $Res Function(_$GetRangeArusKasEventImpl) then) =
      __$$GetRangeArusKasEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$GetRangeArusKasEventImplCopyWithImpl<$Res>
    extends _$AruskasEventCopyWithImpl<$Res, _$GetRangeArusKasEventImpl>
    implements _$$GetRangeArusKasEventImplCopyWith<$Res> {
  __$$GetRangeArusKasEventImplCopyWithImpl(_$GetRangeArusKasEventImpl _value,
      $Res Function(_$GetRangeArusKasEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$GetRangeArusKasEventImpl(
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

class _$GetRangeArusKasEventImpl implements GetRangeArusKasEvent {
  const _$GetRangeArusKasEventImpl(this.startDate, this.endDate);

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'AruskasEvent.getRangeArusKas(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRangeArusKasEventImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRangeArusKasEventImplCopyWith<_$GetRangeArusKasEventImpl>
      get copyWith =>
          __$$GetRangeArusKasEventImplCopyWithImpl<_$GetRangeArusKasEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate)
        getRangeArusKas,
    required TResult Function(ArusKas arusKas) addArusKas,
    required TResult Function(ArusKas arusKas, String arusKasId) updateArusKas,
    required TResult Function(String arusKasId) deleteArusKas,
  }) {
    return getRangeArusKas(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult? Function(ArusKas arusKas)? addArusKas,
    TResult? Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult? Function(String arusKasId)? deleteArusKas,
  }) {
    return getRangeArusKas?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult Function(ArusKas arusKas)? addArusKas,
    TResult Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult Function(String arusKasId)? deleteArusKas,
    required TResult orElse(),
  }) {
    if (getRangeArusKas != null) {
      return getRangeArusKas(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRangeArusKasEvent value) getRangeArusKas,
    required TResult Function(AddArusKasEvent value) addArusKas,
    required TResult Function(UpdateArusKasEvent value) updateArusKas,
    required TResult Function(DeleteArusKasEvent value) deleteArusKas,
  }) {
    return getRangeArusKas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult? Function(AddArusKasEvent value)? addArusKas,
    TResult? Function(UpdateArusKasEvent value)? updateArusKas,
    TResult? Function(DeleteArusKasEvent value)? deleteArusKas,
  }) {
    return getRangeArusKas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult Function(AddArusKasEvent value)? addArusKas,
    TResult Function(UpdateArusKasEvent value)? updateArusKas,
    TResult Function(DeleteArusKasEvent value)? deleteArusKas,
    required TResult orElse(),
  }) {
    if (getRangeArusKas != null) {
      return getRangeArusKas(this);
    }
    return orElse();
  }
}

abstract class GetRangeArusKasEvent implements AruskasEvent {
  const factory GetRangeArusKasEvent(
          final DateTime startDate, final DateTime endDate) =
      _$GetRangeArusKasEventImpl;

  DateTime get startDate;
  DateTime get endDate;
  @JsonKey(ignore: true)
  _$$GetRangeArusKasEventImplCopyWith<_$GetRangeArusKasEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddArusKasEventImplCopyWith<$Res> {
  factory _$$AddArusKasEventImplCopyWith(_$AddArusKasEventImpl value,
          $Res Function(_$AddArusKasEventImpl) then) =
      __$$AddArusKasEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArusKas arusKas});

  $ArusKasCopyWith<$Res> get arusKas;
}

/// @nodoc
class __$$AddArusKasEventImplCopyWithImpl<$Res>
    extends _$AruskasEventCopyWithImpl<$Res, _$AddArusKasEventImpl>
    implements _$$AddArusKasEventImplCopyWith<$Res> {
  __$$AddArusKasEventImplCopyWithImpl(
      _$AddArusKasEventImpl _value, $Res Function(_$AddArusKasEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arusKas = null,
  }) {
    return _then(_$AddArusKasEventImpl(
      null == arusKas
          ? _value.arusKas
          : arusKas // ignore: cast_nullable_to_non_nullable
              as ArusKas,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArusKasCopyWith<$Res> get arusKas {
    return $ArusKasCopyWith<$Res>(_value.arusKas, (value) {
      return _then(_value.copyWith(arusKas: value));
    });
  }
}

/// @nodoc

class _$AddArusKasEventImpl implements AddArusKasEvent {
  const _$AddArusKasEventImpl(this.arusKas);

  @override
  final ArusKas arusKas;

  @override
  String toString() {
    return 'AruskasEvent.addArusKas(arusKas: $arusKas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArusKasEventImpl &&
            (identical(other.arusKas, arusKas) || other.arusKas == arusKas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arusKas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddArusKasEventImplCopyWith<_$AddArusKasEventImpl> get copyWith =>
      __$$AddArusKasEventImplCopyWithImpl<_$AddArusKasEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate)
        getRangeArusKas,
    required TResult Function(ArusKas arusKas) addArusKas,
    required TResult Function(ArusKas arusKas, String arusKasId) updateArusKas,
    required TResult Function(String arusKasId) deleteArusKas,
  }) {
    return addArusKas(arusKas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult? Function(ArusKas arusKas)? addArusKas,
    TResult? Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult? Function(String arusKasId)? deleteArusKas,
  }) {
    return addArusKas?.call(arusKas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult Function(ArusKas arusKas)? addArusKas,
    TResult Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult Function(String arusKasId)? deleteArusKas,
    required TResult orElse(),
  }) {
    if (addArusKas != null) {
      return addArusKas(arusKas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRangeArusKasEvent value) getRangeArusKas,
    required TResult Function(AddArusKasEvent value) addArusKas,
    required TResult Function(UpdateArusKasEvent value) updateArusKas,
    required TResult Function(DeleteArusKasEvent value) deleteArusKas,
  }) {
    return addArusKas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult? Function(AddArusKasEvent value)? addArusKas,
    TResult? Function(UpdateArusKasEvent value)? updateArusKas,
    TResult? Function(DeleteArusKasEvent value)? deleteArusKas,
  }) {
    return addArusKas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult Function(AddArusKasEvent value)? addArusKas,
    TResult Function(UpdateArusKasEvent value)? updateArusKas,
    TResult Function(DeleteArusKasEvent value)? deleteArusKas,
    required TResult orElse(),
  }) {
    if (addArusKas != null) {
      return addArusKas(this);
    }
    return orElse();
  }
}

abstract class AddArusKasEvent implements AruskasEvent {
  const factory AddArusKasEvent(final ArusKas arusKas) = _$AddArusKasEventImpl;

  ArusKas get arusKas;
  @JsonKey(ignore: true)
  _$$AddArusKasEventImplCopyWith<_$AddArusKasEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateArusKasEventImplCopyWith<$Res> {
  factory _$$UpdateArusKasEventImplCopyWith(_$UpdateArusKasEventImpl value,
          $Res Function(_$UpdateArusKasEventImpl) then) =
      __$$UpdateArusKasEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArusKas arusKas, String arusKasId});

  $ArusKasCopyWith<$Res> get arusKas;
}

/// @nodoc
class __$$UpdateArusKasEventImplCopyWithImpl<$Res>
    extends _$AruskasEventCopyWithImpl<$Res, _$UpdateArusKasEventImpl>
    implements _$$UpdateArusKasEventImplCopyWith<$Res> {
  __$$UpdateArusKasEventImplCopyWithImpl(_$UpdateArusKasEventImpl _value,
      $Res Function(_$UpdateArusKasEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arusKas = null,
    Object? arusKasId = null,
  }) {
    return _then(_$UpdateArusKasEventImpl(
      null == arusKas
          ? _value.arusKas
          : arusKas // ignore: cast_nullable_to_non_nullable
              as ArusKas,
      null == arusKasId
          ? _value.arusKasId
          : arusKasId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArusKasCopyWith<$Res> get arusKas {
    return $ArusKasCopyWith<$Res>(_value.arusKas, (value) {
      return _then(_value.copyWith(arusKas: value));
    });
  }
}

/// @nodoc

class _$UpdateArusKasEventImpl implements UpdateArusKasEvent {
  const _$UpdateArusKasEventImpl(this.arusKas, this.arusKasId);

  @override
  final ArusKas arusKas;
  @override
  final String arusKasId;

  @override
  String toString() {
    return 'AruskasEvent.updateArusKas(arusKas: $arusKas, arusKasId: $arusKasId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArusKasEventImpl &&
            (identical(other.arusKas, arusKas) || other.arusKas == arusKas) &&
            (identical(other.arusKasId, arusKasId) ||
                other.arusKasId == arusKasId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arusKas, arusKasId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArusKasEventImplCopyWith<_$UpdateArusKasEventImpl> get copyWith =>
      __$$UpdateArusKasEventImplCopyWithImpl<_$UpdateArusKasEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate)
        getRangeArusKas,
    required TResult Function(ArusKas arusKas) addArusKas,
    required TResult Function(ArusKas arusKas, String arusKasId) updateArusKas,
    required TResult Function(String arusKasId) deleteArusKas,
  }) {
    return updateArusKas(arusKas, arusKasId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult? Function(ArusKas arusKas)? addArusKas,
    TResult? Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult? Function(String arusKasId)? deleteArusKas,
  }) {
    return updateArusKas?.call(arusKas, arusKasId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult Function(ArusKas arusKas)? addArusKas,
    TResult Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult Function(String arusKasId)? deleteArusKas,
    required TResult orElse(),
  }) {
    if (updateArusKas != null) {
      return updateArusKas(arusKas, arusKasId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRangeArusKasEvent value) getRangeArusKas,
    required TResult Function(AddArusKasEvent value) addArusKas,
    required TResult Function(UpdateArusKasEvent value) updateArusKas,
    required TResult Function(DeleteArusKasEvent value) deleteArusKas,
  }) {
    return updateArusKas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult? Function(AddArusKasEvent value)? addArusKas,
    TResult? Function(UpdateArusKasEvent value)? updateArusKas,
    TResult? Function(DeleteArusKasEvent value)? deleteArusKas,
  }) {
    return updateArusKas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult Function(AddArusKasEvent value)? addArusKas,
    TResult Function(UpdateArusKasEvent value)? updateArusKas,
    TResult Function(DeleteArusKasEvent value)? deleteArusKas,
    required TResult orElse(),
  }) {
    if (updateArusKas != null) {
      return updateArusKas(this);
    }
    return orElse();
  }
}

abstract class UpdateArusKasEvent implements AruskasEvent {
  const factory UpdateArusKasEvent(
      final ArusKas arusKas, final String arusKasId) = _$UpdateArusKasEventImpl;

  ArusKas get arusKas;
  String get arusKasId;
  @JsonKey(ignore: true)
  _$$UpdateArusKasEventImplCopyWith<_$UpdateArusKasEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteArusKasEventImplCopyWith<$Res> {
  factory _$$DeleteArusKasEventImplCopyWith(_$DeleteArusKasEventImpl value,
          $Res Function(_$DeleteArusKasEventImpl) then) =
      __$$DeleteArusKasEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String arusKasId});
}

/// @nodoc
class __$$DeleteArusKasEventImplCopyWithImpl<$Res>
    extends _$AruskasEventCopyWithImpl<$Res, _$DeleteArusKasEventImpl>
    implements _$$DeleteArusKasEventImplCopyWith<$Res> {
  __$$DeleteArusKasEventImplCopyWithImpl(_$DeleteArusKasEventImpl _value,
      $Res Function(_$DeleteArusKasEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arusKasId = null,
  }) {
    return _then(_$DeleteArusKasEventImpl(
      null == arusKasId
          ? _value.arusKasId
          : arusKasId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteArusKasEventImpl implements DeleteArusKasEvent {
  const _$DeleteArusKasEventImpl(this.arusKasId);

  @override
  final String arusKasId;

  @override
  String toString() {
    return 'AruskasEvent.deleteArusKas(arusKasId: $arusKasId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteArusKasEventImpl &&
            (identical(other.arusKasId, arusKasId) ||
                other.arusKasId == arusKasId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arusKasId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteArusKasEventImplCopyWith<_$DeleteArusKasEventImpl> get copyWith =>
      __$$DeleteArusKasEventImplCopyWithImpl<_$DeleteArusKasEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate)
        getRangeArusKas,
    required TResult Function(ArusKas arusKas) addArusKas,
    required TResult Function(ArusKas arusKas, String arusKasId) updateArusKas,
    required TResult Function(String arusKasId) deleteArusKas,
  }) {
    return deleteArusKas(arusKasId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult? Function(ArusKas arusKas)? addArusKas,
    TResult? Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult? Function(String arusKasId)? deleteArusKas,
  }) {
    return deleteArusKas?.call(arusKasId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? getRangeArusKas,
    TResult Function(ArusKas arusKas)? addArusKas,
    TResult Function(ArusKas arusKas, String arusKasId)? updateArusKas,
    TResult Function(String arusKasId)? deleteArusKas,
    required TResult orElse(),
  }) {
    if (deleteArusKas != null) {
      return deleteArusKas(arusKasId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRangeArusKasEvent value) getRangeArusKas,
    required TResult Function(AddArusKasEvent value) addArusKas,
    required TResult Function(UpdateArusKasEvent value) updateArusKas,
    required TResult Function(DeleteArusKasEvent value) deleteArusKas,
  }) {
    return deleteArusKas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult? Function(AddArusKasEvent value)? addArusKas,
    TResult? Function(UpdateArusKasEvent value)? updateArusKas,
    TResult? Function(DeleteArusKasEvent value)? deleteArusKas,
  }) {
    return deleteArusKas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRangeArusKasEvent value)? getRangeArusKas,
    TResult Function(AddArusKasEvent value)? addArusKas,
    TResult Function(UpdateArusKasEvent value)? updateArusKas,
    TResult Function(DeleteArusKasEvent value)? deleteArusKas,
    required TResult orElse(),
  }) {
    if (deleteArusKas != null) {
      return deleteArusKas(this);
    }
    return orElse();
  }
}

abstract class DeleteArusKasEvent implements AruskasEvent {
  const factory DeleteArusKasEvent(final String arusKasId) =
      _$DeleteArusKasEventImpl;

  String get arusKasId;
  @JsonKey(ignore: true)
  _$$DeleteArusKasEventImplCopyWith<_$DeleteArusKasEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

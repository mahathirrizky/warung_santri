// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stokbarang_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StokbarangEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StokBarang stokBarang) addStokBarang,
    required TResult Function(StokBarang stokBarang, String stokBarangId)
        updateStokBarang,
    required TResult Function(String stokBarangId) deleteStokBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StokBarang stokBarang)? addStokBarang,
    TResult? Function(StokBarang stokBarang, String stokBarangId)?
        updateStokBarang,
    TResult? Function(String stokBarangId)? deleteStokBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StokBarang stokBarang)? addStokBarang,
    TResult Function(StokBarang stokBarang, String stokBarangId)?
        updateStokBarang,
    TResult Function(String stokBarangId)? deleteStokBarang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStokBarangEvent value) addStokBarang,
    required TResult Function(UpdateStokBarangEvent value) updateStokBarang,
    required TResult Function(DeleteStokBarangEvent value) deleteStokBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStokBarangEvent value)? addStokBarang,
    TResult? Function(UpdateStokBarangEvent value)? updateStokBarang,
    TResult? Function(DeleteStokBarangEvent value)? deleteStokBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStokBarangEvent value)? addStokBarang,
    TResult Function(UpdateStokBarangEvent value)? updateStokBarang,
    TResult Function(DeleteStokBarangEvent value)? deleteStokBarang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StokbarangEventCopyWith<$Res> {
  factory $StokbarangEventCopyWith(
          StokbarangEvent value, $Res Function(StokbarangEvent) then) =
      _$StokbarangEventCopyWithImpl<$Res, StokbarangEvent>;
}

/// @nodoc
class _$StokbarangEventCopyWithImpl<$Res, $Val extends StokbarangEvent>
    implements $StokbarangEventCopyWith<$Res> {
  _$StokbarangEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddStokBarangEventImplCopyWith<$Res> {
  factory _$$AddStokBarangEventImplCopyWith(_$AddStokBarangEventImpl value,
          $Res Function(_$AddStokBarangEventImpl) then) =
      __$$AddStokBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StokBarang stokBarang});

  $StokBarangCopyWith<$Res> get stokBarang;
}

/// @nodoc
class __$$AddStokBarangEventImplCopyWithImpl<$Res>
    extends _$StokbarangEventCopyWithImpl<$Res, _$AddStokBarangEventImpl>
    implements _$$AddStokBarangEventImplCopyWith<$Res> {
  __$$AddStokBarangEventImplCopyWithImpl(_$AddStokBarangEventImpl _value,
      $Res Function(_$AddStokBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stokBarang = null,
  }) {
    return _then(_$AddStokBarangEventImpl(
      null == stokBarang
          ? _value.stokBarang
          : stokBarang // ignore: cast_nullable_to_non_nullable
              as StokBarang,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StokBarangCopyWith<$Res> get stokBarang {
    return $StokBarangCopyWith<$Res>(_value.stokBarang, (value) {
      return _then(_value.copyWith(stokBarang: value));
    });
  }
}

/// @nodoc

class _$AddStokBarangEventImpl implements AddStokBarangEvent {
  const _$AddStokBarangEventImpl(this.stokBarang);

  @override
  final StokBarang stokBarang;

  @override
  String toString() {
    return 'StokbarangEvent.addStokBarang(stokBarang: $stokBarang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStokBarangEventImpl &&
            (identical(other.stokBarang, stokBarang) ||
                other.stokBarang == stokBarang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stokBarang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStokBarangEventImplCopyWith<_$AddStokBarangEventImpl> get copyWith =>
      __$$AddStokBarangEventImplCopyWithImpl<_$AddStokBarangEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StokBarang stokBarang) addStokBarang,
    required TResult Function(StokBarang stokBarang, String stokBarangId)
        updateStokBarang,
    required TResult Function(String stokBarangId) deleteStokBarang,
  }) {
    return addStokBarang(stokBarang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StokBarang stokBarang)? addStokBarang,
    TResult? Function(StokBarang stokBarang, String stokBarangId)?
        updateStokBarang,
    TResult? Function(String stokBarangId)? deleteStokBarang,
  }) {
    return addStokBarang?.call(stokBarang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StokBarang stokBarang)? addStokBarang,
    TResult Function(StokBarang stokBarang, String stokBarangId)?
        updateStokBarang,
    TResult Function(String stokBarangId)? deleteStokBarang,
    required TResult orElse(),
  }) {
    if (addStokBarang != null) {
      return addStokBarang(stokBarang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStokBarangEvent value) addStokBarang,
    required TResult Function(UpdateStokBarangEvent value) updateStokBarang,
    required TResult Function(DeleteStokBarangEvent value) deleteStokBarang,
  }) {
    return addStokBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStokBarangEvent value)? addStokBarang,
    TResult? Function(UpdateStokBarangEvent value)? updateStokBarang,
    TResult? Function(DeleteStokBarangEvent value)? deleteStokBarang,
  }) {
    return addStokBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStokBarangEvent value)? addStokBarang,
    TResult Function(UpdateStokBarangEvent value)? updateStokBarang,
    TResult Function(DeleteStokBarangEvent value)? deleteStokBarang,
    required TResult orElse(),
  }) {
    if (addStokBarang != null) {
      return addStokBarang(this);
    }
    return orElse();
  }
}

abstract class AddStokBarangEvent implements StokbarangEvent {
  const factory AddStokBarangEvent(final StokBarang stokBarang) =
      _$AddStokBarangEventImpl;

  StokBarang get stokBarang;
  @JsonKey(ignore: true)
  _$$AddStokBarangEventImplCopyWith<_$AddStokBarangEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStokBarangEventImplCopyWith<$Res> {
  factory _$$UpdateStokBarangEventImplCopyWith(
          _$UpdateStokBarangEventImpl value,
          $Res Function(_$UpdateStokBarangEventImpl) then) =
      __$$UpdateStokBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StokBarang stokBarang, String stokBarangId});

  $StokBarangCopyWith<$Res> get stokBarang;
}

/// @nodoc
class __$$UpdateStokBarangEventImplCopyWithImpl<$Res>
    extends _$StokbarangEventCopyWithImpl<$Res, _$UpdateStokBarangEventImpl>
    implements _$$UpdateStokBarangEventImplCopyWith<$Res> {
  __$$UpdateStokBarangEventImplCopyWithImpl(_$UpdateStokBarangEventImpl _value,
      $Res Function(_$UpdateStokBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stokBarang = null,
    Object? stokBarangId = null,
  }) {
    return _then(_$UpdateStokBarangEventImpl(
      null == stokBarang
          ? _value.stokBarang
          : stokBarang // ignore: cast_nullable_to_non_nullable
              as StokBarang,
      null == stokBarangId
          ? _value.stokBarangId
          : stokBarangId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StokBarangCopyWith<$Res> get stokBarang {
    return $StokBarangCopyWith<$Res>(_value.stokBarang, (value) {
      return _then(_value.copyWith(stokBarang: value));
    });
  }
}

/// @nodoc

class _$UpdateStokBarangEventImpl implements UpdateStokBarangEvent {
  const _$UpdateStokBarangEventImpl(this.stokBarang, this.stokBarangId);

  @override
  final StokBarang stokBarang;
  @override
  final String stokBarangId;

  @override
  String toString() {
    return 'StokbarangEvent.updateStokBarang(stokBarang: $stokBarang, stokBarangId: $stokBarangId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStokBarangEventImpl &&
            (identical(other.stokBarang, stokBarang) ||
                other.stokBarang == stokBarang) &&
            (identical(other.stokBarangId, stokBarangId) ||
                other.stokBarangId == stokBarangId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stokBarang, stokBarangId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStokBarangEventImplCopyWith<_$UpdateStokBarangEventImpl>
      get copyWith => __$$UpdateStokBarangEventImplCopyWithImpl<
          _$UpdateStokBarangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StokBarang stokBarang) addStokBarang,
    required TResult Function(StokBarang stokBarang, String stokBarangId)
        updateStokBarang,
    required TResult Function(String stokBarangId) deleteStokBarang,
  }) {
    return updateStokBarang(stokBarang, stokBarangId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StokBarang stokBarang)? addStokBarang,
    TResult? Function(StokBarang stokBarang, String stokBarangId)?
        updateStokBarang,
    TResult? Function(String stokBarangId)? deleteStokBarang,
  }) {
    return updateStokBarang?.call(stokBarang, stokBarangId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StokBarang stokBarang)? addStokBarang,
    TResult Function(StokBarang stokBarang, String stokBarangId)?
        updateStokBarang,
    TResult Function(String stokBarangId)? deleteStokBarang,
    required TResult orElse(),
  }) {
    if (updateStokBarang != null) {
      return updateStokBarang(stokBarang, stokBarangId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStokBarangEvent value) addStokBarang,
    required TResult Function(UpdateStokBarangEvent value) updateStokBarang,
    required TResult Function(DeleteStokBarangEvent value) deleteStokBarang,
  }) {
    return updateStokBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStokBarangEvent value)? addStokBarang,
    TResult? Function(UpdateStokBarangEvent value)? updateStokBarang,
    TResult? Function(DeleteStokBarangEvent value)? deleteStokBarang,
  }) {
    return updateStokBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStokBarangEvent value)? addStokBarang,
    TResult Function(UpdateStokBarangEvent value)? updateStokBarang,
    TResult Function(DeleteStokBarangEvent value)? deleteStokBarang,
    required TResult orElse(),
  }) {
    if (updateStokBarang != null) {
      return updateStokBarang(this);
    }
    return orElse();
  }
}

abstract class UpdateStokBarangEvent implements StokbarangEvent {
  const factory UpdateStokBarangEvent(
          final StokBarang stokBarang, final String stokBarangId) =
      _$UpdateStokBarangEventImpl;

  StokBarang get stokBarang;
  String get stokBarangId;
  @JsonKey(ignore: true)
  _$$UpdateStokBarangEventImplCopyWith<_$UpdateStokBarangEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStokBarangEventImplCopyWith<$Res> {
  factory _$$DeleteStokBarangEventImplCopyWith(
          _$DeleteStokBarangEventImpl value,
          $Res Function(_$DeleteStokBarangEventImpl) then) =
      __$$DeleteStokBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stokBarangId});
}

/// @nodoc
class __$$DeleteStokBarangEventImplCopyWithImpl<$Res>
    extends _$StokbarangEventCopyWithImpl<$Res, _$DeleteStokBarangEventImpl>
    implements _$$DeleteStokBarangEventImplCopyWith<$Res> {
  __$$DeleteStokBarangEventImplCopyWithImpl(_$DeleteStokBarangEventImpl _value,
      $Res Function(_$DeleteStokBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stokBarangId = null,
  }) {
    return _then(_$DeleteStokBarangEventImpl(
      null == stokBarangId
          ? _value.stokBarangId
          : stokBarangId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteStokBarangEventImpl implements DeleteStokBarangEvent {
  const _$DeleteStokBarangEventImpl(this.stokBarangId);

  @override
  final String stokBarangId;

  @override
  String toString() {
    return 'StokbarangEvent.deleteStokBarang(stokBarangId: $stokBarangId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStokBarangEventImpl &&
            (identical(other.stokBarangId, stokBarangId) ||
                other.stokBarangId == stokBarangId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stokBarangId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStokBarangEventImplCopyWith<_$DeleteStokBarangEventImpl>
      get copyWith => __$$DeleteStokBarangEventImplCopyWithImpl<
          _$DeleteStokBarangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StokBarang stokBarang) addStokBarang,
    required TResult Function(StokBarang stokBarang, String stokBarangId)
        updateStokBarang,
    required TResult Function(String stokBarangId) deleteStokBarang,
  }) {
    return deleteStokBarang(stokBarangId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StokBarang stokBarang)? addStokBarang,
    TResult? Function(StokBarang stokBarang, String stokBarangId)?
        updateStokBarang,
    TResult? Function(String stokBarangId)? deleteStokBarang,
  }) {
    return deleteStokBarang?.call(stokBarangId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StokBarang stokBarang)? addStokBarang,
    TResult Function(StokBarang stokBarang, String stokBarangId)?
        updateStokBarang,
    TResult Function(String stokBarangId)? deleteStokBarang,
    required TResult orElse(),
  }) {
    if (deleteStokBarang != null) {
      return deleteStokBarang(stokBarangId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStokBarangEvent value) addStokBarang,
    required TResult Function(UpdateStokBarangEvent value) updateStokBarang,
    required TResult Function(DeleteStokBarangEvent value) deleteStokBarang,
  }) {
    return deleteStokBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStokBarangEvent value)? addStokBarang,
    TResult? Function(UpdateStokBarangEvent value)? updateStokBarang,
    TResult? Function(DeleteStokBarangEvent value)? deleteStokBarang,
  }) {
    return deleteStokBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStokBarangEvent value)? addStokBarang,
    TResult Function(UpdateStokBarangEvent value)? updateStokBarang,
    TResult Function(DeleteStokBarangEvent value)? deleteStokBarang,
    required TResult orElse(),
  }) {
    if (deleteStokBarang != null) {
      return deleteStokBarang(this);
    }
    return orElse();
  }
}

abstract class DeleteStokBarangEvent implements StokbarangEvent {
  const factory DeleteStokBarangEvent(final String stokBarangId) =
      _$DeleteStokBarangEventImpl;

  String get stokBarangId;
  @JsonKey(ignore: true)
  _$$DeleteStokBarangEventImplCopyWith<_$DeleteStokBarangEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

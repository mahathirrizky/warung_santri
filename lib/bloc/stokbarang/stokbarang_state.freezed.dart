// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stokbarang_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StokbarangState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StokbarangInitial value) initial,
    required TResult Function(StokbarangLoading value) loading,
    required TResult Function(StokbarangSuccess value) success,
    required TResult Function(StokbarangFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StokbarangInitial value)? initial,
    TResult? Function(StokbarangLoading value)? loading,
    TResult? Function(StokbarangSuccess value)? success,
    TResult? Function(StokbarangFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StokbarangInitial value)? initial,
    TResult Function(StokbarangLoading value)? loading,
    TResult Function(StokbarangSuccess value)? success,
    TResult Function(StokbarangFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StokbarangStateCopyWith<$Res> {
  factory $StokbarangStateCopyWith(
          StokbarangState value, $Res Function(StokbarangState) then) =
      _$StokbarangStateCopyWithImpl<$Res, StokbarangState>;
}

/// @nodoc
class _$StokbarangStateCopyWithImpl<$Res, $Val extends StokbarangState>
    implements $StokbarangStateCopyWith<$Res> {
  _$StokbarangStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StokbarangInitialImplCopyWith<$Res> {
  factory _$$StokbarangInitialImplCopyWith(_$StokbarangInitialImpl value,
          $Res Function(_$StokbarangInitialImpl) then) =
      __$$StokbarangInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StokbarangInitialImplCopyWithImpl<$Res>
    extends _$StokbarangStateCopyWithImpl<$Res, _$StokbarangInitialImpl>
    implements _$$StokbarangInitialImplCopyWith<$Res> {
  __$$StokbarangInitialImplCopyWithImpl(_$StokbarangInitialImpl _value,
      $Res Function(_$StokbarangInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StokbarangInitialImpl implements StokbarangInitial {
  const _$StokbarangInitialImpl();

  @override
  String toString() {
    return 'StokbarangState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StokbarangInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StokbarangInitial value) initial,
    required TResult Function(StokbarangLoading value) loading,
    required TResult Function(StokbarangSuccess value) success,
    required TResult Function(StokbarangFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StokbarangInitial value)? initial,
    TResult? Function(StokbarangLoading value)? loading,
    TResult? Function(StokbarangSuccess value)? success,
    TResult? Function(StokbarangFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StokbarangInitial value)? initial,
    TResult Function(StokbarangLoading value)? loading,
    TResult Function(StokbarangSuccess value)? success,
    TResult Function(StokbarangFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StokbarangInitial implements StokbarangState {
  const factory StokbarangInitial() = _$StokbarangInitialImpl;
}

/// @nodoc
abstract class _$$StokbarangLoadingImplCopyWith<$Res> {
  factory _$$StokbarangLoadingImplCopyWith(_$StokbarangLoadingImpl value,
          $Res Function(_$StokbarangLoadingImpl) then) =
      __$$StokbarangLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StokbarangLoadingImplCopyWithImpl<$Res>
    extends _$StokbarangStateCopyWithImpl<$Res, _$StokbarangLoadingImpl>
    implements _$$StokbarangLoadingImplCopyWith<$Res> {
  __$$StokbarangLoadingImplCopyWithImpl(_$StokbarangLoadingImpl _value,
      $Res Function(_$StokbarangLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StokbarangLoadingImpl implements StokbarangLoading {
  const _$StokbarangLoadingImpl();

  @override
  String toString() {
    return 'StokbarangState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StokbarangLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StokbarangInitial value) initial,
    required TResult Function(StokbarangLoading value) loading,
    required TResult Function(StokbarangSuccess value) success,
    required TResult Function(StokbarangFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StokbarangInitial value)? initial,
    TResult? Function(StokbarangLoading value)? loading,
    TResult? Function(StokbarangSuccess value)? success,
    TResult? Function(StokbarangFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StokbarangInitial value)? initial,
    TResult Function(StokbarangLoading value)? loading,
    TResult Function(StokbarangSuccess value)? success,
    TResult Function(StokbarangFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StokbarangLoading implements StokbarangState {
  const factory StokbarangLoading() = _$StokbarangLoadingImpl;
}

/// @nodoc
abstract class _$$StokbarangSuccessImplCopyWith<$Res> {
  factory _$$StokbarangSuccessImplCopyWith(_$StokbarangSuccessImpl value,
          $Res Function(_$StokbarangSuccessImpl) then) =
      __$$StokbarangSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StokbarangSuccessImplCopyWithImpl<$Res>
    extends _$StokbarangStateCopyWithImpl<$Res, _$StokbarangSuccessImpl>
    implements _$$StokbarangSuccessImplCopyWith<$Res> {
  __$$StokbarangSuccessImplCopyWithImpl(_$StokbarangSuccessImpl _value,
      $Res Function(_$StokbarangSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StokbarangSuccessImpl implements StokbarangSuccess {
  const _$StokbarangSuccessImpl();

  @override
  String toString() {
    return 'StokbarangState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StokbarangSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StokbarangInitial value) initial,
    required TResult Function(StokbarangLoading value) loading,
    required TResult Function(StokbarangSuccess value) success,
    required TResult Function(StokbarangFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StokbarangInitial value)? initial,
    TResult? Function(StokbarangLoading value)? loading,
    TResult? Function(StokbarangSuccess value)? success,
    TResult? Function(StokbarangFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StokbarangInitial value)? initial,
    TResult Function(StokbarangLoading value)? loading,
    TResult Function(StokbarangSuccess value)? success,
    TResult Function(StokbarangFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StokbarangSuccess implements StokbarangState {
  const factory StokbarangSuccess() = _$StokbarangSuccessImpl;
}

/// @nodoc
abstract class _$$StokbarangFailureImplCopyWith<$Res> {
  factory _$$StokbarangFailureImplCopyWith(_$StokbarangFailureImpl value,
          $Res Function(_$StokbarangFailureImpl) then) =
      __$$StokbarangFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StokbarangFailureImplCopyWithImpl<$Res>
    extends _$StokbarangStateCopyWithImpl<$Res, _$StokbarangFailureImpl>
    implements _$$StokbarangFailureImplCopyWith<$Res> {
  __$$StokbarangFailureImplCopyWithImpl(_$StokbarangFailureImpl _value,
      $Res Function(_$StokbarangFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StokbarangFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StokbarangFailureImpl implements StokbarangFailure {
  const _$StokbarangFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StokbarangState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StokbarangFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StokbarangFailureImplCopyWith<_$StokbarangFailureImpl> get copyWith =>
      __$$StokbarangFailureImplCopyWithImpl<_$StokbarangFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StokbarangInitial value) initial,
    required TResult Function(StokbarangLoading value) loading,
    required TResult Function(StokbarangSuccess value) success,
    required TResult Function(StokbarangFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StokbarangInitial value)? initial,
    TResult? Function(StokbarangLoading value)? loading,
    TResult? Function(StokbarangSuccess value)? success,
    TResult? Function(StokbarangFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StokbarangInitial value)? initial,
    TResult Function(StokbarangLoading value)? loading,
    TResult Function(StokbarangSuccess value)? success,
    TResult Function(StokbarangFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class StokbarangFailure implements StokbarangState {
  const factory StokbarangFailure(final String error) = _$StokbarangFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StokbarangFailureImplCopyWith<_$StokbarangFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

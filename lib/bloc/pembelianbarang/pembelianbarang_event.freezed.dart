// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pembelianbarang_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PembelianbarangEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PembelianBarang pembelianBarang, List<Barang> barang)
        addPembelianBarang,
    required TResult Function(
            PembelianBarang pembelianBarang, String pembelianBarangId)
        updatePembelianBarang,
    required TResult Function(String pembelianBarangId) deletePembelianBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PembelianBarang pembelianBarang, List<Barang> barang)?
        addPembelianBarang,
    TResult? Function(
            PembelianBarang pembelianBarang, String pembelianBarangId)?
        updatePembelianBarang,
    TResult? Function(String pembelianBarangId)? deletePembelianBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PembelianBarang pembelianBarang, List<Barang> barang)?
        addPembelianBarang,
    TResult Function(PembelianBarang pembelianBarang, String pembelianBarangId)?
        updatePembelianBarang,
    TResult Function(String pembelianBarangId)? deletePembelianBarang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPembelianBarangEvent value) addPembelianBarang,
    required TResult Function(UpdatePembelianBarangEvent value)
        updatePembelianBarang,
    required TResult Function(DeletePembelianBarangEvent value)
        deletePembelianBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPembelianBarangEvent value)? addPembelianBarang,
    TResult? Function(UpdatePembelianBarangEvent value)? updatePembelianBarang,
    TResult? Function(DeletePembelianBarangEvent value)? deletePembelianBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPembelianBarangEvent value)? addPembelianBarang,
    TResult Function(UpdatePembelianBarangEvent value)? updatePembelianBarang,
    TResult Function(DeletePembelianBarangEvent value)? deletePembelianBarang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PembelianbarangEventCopyWith<$Res> {
  factory $PembelianbarangEventCopyWith(PembelianbarangEvent value,
          $Res Function(PembelianbarangEvent) then) =
      _$PembelianbarangEventCopyWithImpl<$Res, PembelianbarangEvent>;
}

/// @nodoc
class _$PembelianbarangEventCopyWithImpl<$Res,
        $Val extends PembelianbarangEvent>
    implements $PembelianbarangEventCopyWith<$Res> {
  _$PembelianbarangEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddPembelianBarangEventImplCopyWith<$Res> {
  factory _$$AddPembelianBarangEventImplCopyWith(
          _$AddPembelianBarangEventImpl value,
          $Res Function(_$AddPembelianBarangEventImpl) then) =
      __$$AddPembelianBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PembelianBarang pembelianBarang, List<Barang> barang});

  $PembelianBarangCopyWith<$Res> get pembelianBarang;
}

/// @nodoc
class __$$AddPembelianBarangEventImplCopyWithImpl<$Res>
    extends _$PembelianbarangEventCopyWithImpl<$Res,
        _$AddPembelianBarangEventImpl>
    implements _$$AddPembelianBarangEventImplCopyWith<$Res> {
  __$$AddPembelianBarangEventImplCopyWithImpl(
      _$AddPembelianBarangEventImpl _value,
      $Res Function(_$AddPembelianBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pembelianBarang = null,
    Object? barang = null,
  }) {
    return _then(_$AddPembelianBarangEventImpl(
      null == pembelianBarang
          ? _value.pembelianBarang
          : pembelianBarang // ignore: cast_nullable_to_non_nullable
              as PembelianBarang,
      null == barang
          ? _value._barang
          : barang // ignore: cast_nullable_to_non_nullable
              as List<Barang>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PembelianBarangCopyWith<$Res> get pembelianBarang {
    return $PembelianBarangCopyWith<$Res>(_value.pembelianBarang, (value) {
      return _then(_value.copyWith(pembelianBarang: value));
    });
  }
}

/// @nodoc

class _$AddPembelianBarangEventImpl implements AddPembelianBarangEvent {
  const _$AddPembelianBarangEventImpl(
      this.pembelianBarang, final List<Barang> barang)
      : _barang = barang;

  @override
  final PembelianBarang pembelianBarang;
  final List<Barang> _barang;
  @override
  List<Barang> get barang {
    if (_barang is EqualUnmodifiableListView) return _barang;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barang);
  }

  @override
  String toString() {
    return 'PembelianbarangEvent.addPembelianBarang(pembelianBarang: $pembelianBarang, barang: $barang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPembelianBarangEventImpl &&
            (identical(other.pembelianBarang, pembelianBarang) ||
                other.pembelianBarang == pembelianBarang) &&
            const DeepCollectionEquality().equals(other._barang, _barang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pembelianBarang,
      const DeepCollectionEquality().hash(_barang));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPembelianBarangEventImplCopyWith<_$AddPembelianBarangEventImpl>
      get copyWith => __$$AddPembelianBarangEventImplCopyWithImpl<
          _$AddPembelianBarangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PembelianBarang pembelianBarang, List<Barang> barang)
        addPembelianBarang,
    required TResult Function(
            PembelianBarang pembelianBarang, String pembelianBarangId)
        updatePembelianBarang,
    required TResult Function(String pembelianBarangId) deletePembelianBarang,
  }) {
    return addPembelianBarang(pembelianBarang, barang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PembelianBarang pembelianBarang, List<Barang> barang)?
        addPembelianBarang,
    TResult? Function(
            PembelianBarang pembelianBarang, String pembelianBarangId)?
        updatePembelianBarang,
    TResult? Function(String pembelianBarangId)? deletePembelianBarang,
  }) {
    return addPembelianBarang?.call(pembelianBarang, barang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PembelianBarang pembelianBarang, List<Barang> barang)?
        addPembelianBarang,
    TResult Function(PembelianBarang pembelianBarang, String pembelianBarangId)?
        updatePembelianBarang,
    TResult Function(String pembelianBarangId)? deletePembelianBarang,
    required TResult orElse(),
  }) {
    if (addPembelianBarang != null) {
      return addPembelianBarang(pembelianBarang, barang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPembelianBarangEvent value) addPembelianBarang,
    required TResult Function(UpdatePembelianBarangEvent value)
        updatePembelianBarang,
    required TResult Function(DeletePembelianBarangEvent value)
        deletePembelianBarang,
  }) {
    return addPembelianBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPembelianBarangEvent value)? addPembelianBarang,
    TResult? Function(UpdatePembelianBarangEvent value)? updatePembelianBarang,
    TResult? Function(DeletePembelianBarangEvent value)? deletePembelianBarang,
  }) {
    return addPembelianBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPembelianBarangEvent value)? addPembelianBarang,
    TResult Function(UpdatePembelianBarangEvent value)? updatePembelianBarang,
    TResult Function(DeletePembelianBarangEvent value)? deletePembelianBarang,
    required TResult orElse(),
  }) {
    if (addPembelianBarang != null) {
      return addPembelianBarang(this);
    }
    return orElse();
  }
}

abstract class AddPembelianBarangEvent implements PembelianbarangEvent {
  const factory AddPembelianBarangEvent(
          final PembelianBarang pembelianBarang, final List<Barang> barang) =
      _$AddPembelianBarangEventImpl;

  PembelianBarang get pembelianBarang;
  List<Barang> get barang;
  @JsonKey(ignore: true)
  _$$AddPembelianBarangEventImplCopyWith<_$AddPembelianBarangEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePembelianBarangEventImplCopyWith<$Res> {
  factory _$$UpdatePembelianBarangEventImplCopyWith(
          _$UpdatePembelianBarangEventImpl value,
          $Res Function(_$UpdatePembelianBarangEventImpl) then) =
      __$$UpdatePembelianBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PembelianBarang pembelianBarang, String pembelianBarangId});

  $PembelianBarangCopyWith<$Res> get pembelianBarang;
}

/// @nodoc
class __$$UpdatePembelianBarangEventImplCopyWithImpl<$Res>
    extends _$PembelianbarangEventCopyWithImpl<$Res,
        _$UpdatePembelianBarangEventImpl>
    implements _$$UpdatePembelianBarangEventImplCopyWith<$Res> {
  __$$UpdatePembelianBarangEventImplCopyWithImpl(
      _$UpdatePembelianBarangEventImpl _value,
      $Res Function(_$UpdatePembelianBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pembelianBarang = null,
    Object? pembelianBarangId = null,
  }) {
    return _then(_$UpdatePembelianBarangEventImpl(
      null == pembelianBarang
          ? _value.pembelianBarang
          : pembelianBarang // ignore: cast_nullable_to_non_nullable
              as PembelianBarang,
      null == pembelianBarangId
          ? _value.pembelianBarangId
          : pembelianBarangId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PembelianBarangCopyWith<$Res> get pembelianBarang {
    return $PembelianBarangCopyWith<$Res>(_value.pembelianBarang, (value) {
      return _then(_value.copyWith(pembelianBarang: value));
    });
  }
}

/// @nodoc

class _$UpdatePembelianBarangEventImpl implements UpdatePembelianBarangEvent {
  const _$UpdatePembelianBarangEventImpl(
      this.pembelianBarang, this.pembelianBarangId);

  @override
  final PembelianBarang pembelianBarang;
  @override
  final String pembelianBarangId;

  @override
  String toString() {
    return 'PembelianbarangEvent.updatePembelianBarang(pembelianBarang: $pembelianBarang, pembelianBarangId: $pembelianBarangId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePembelianBarangEventImpl &&
            (identical(other.pembelianBarang, pembelianBarang) ||
                other.pembelianBarang == pembelianBarang) &&
            (identical(other.pembelianBarangId, pembelianBarangId) ||
                other.pembelianBarangId == pembelianBarangId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pembelianBarang, pembelianBarangId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePembelianBarangEventImplCopyWith<_$UpdatePembelianBarangEventImpl>
      get copyWith => __$$UpdatePembelianBarangEventImplCopyWithImpl<
          _$UpdatePembelianBarangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PembelianBarang pembelianBarang, List<Barang> barang)
        addPembelianBarang,
    required TResult Function(
            PembelianBarang pembelianBarang, String pembelianBarangId)
        updatePembelianBarang,
    required TResult Function(String pembelianBarangId) deletePembelianBarang,
  }) {
    return updatePembelianBarang(pembelianBarang, pembelianBarangId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PembelianBarang pembelianBarang, List<Barang> barang)?
        addPembelianBarang,
    TResult? Function(
            PembelianBarang pembelianBarang, String pembelianBarangId)?
        updatePembelianBarang,
    TResult? Function(String pembelianBarangId)? deletePembelianBarang,
  }) {
    return updatePembelianBarang?.call(pembelianBarang, pembelianBarangId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PembelianBarang pembelianBarang, List<Barang> barang)?
        addPembelianBarang,
    TResult Function(PembelianBarang pembelianBarang, String pembelianBarangId)?
        updatePembelianBarang,
    TResult Function(String pembelianBarangId)? deletePembelianBarang,
    required TResult orElse(),
  }) {
    if (updatePembelianBarang != null) {
      return updatePembelianBarang(pembelianBarang, pembelianBarangId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPembelianBarangEvent value) addPembelianBarang,
    required TResult Function(UpdatePembelianBarangEvent value)
        updatePembelianBarang,
    required TResult Function(DeletePembelianBarangEvent value)
        deletePembelianBarang,
  }) {
    return updatePembelianBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPembelianBarangEvent value)? addPembelianBarang,
    TResult? Function(UpdatePembelianBarangEvent value)? updatePembelianBarang,
    TResult? Function(DeletePembelianBarangEvent value)? deletePembelianBarang,
  }) {
    return updatePembelianBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPembelianBarangEvent value)? addPembelianBarang,
    TResult Function(UpdatePembelianBarangEvent value)? updatePembelianBarang,
    TResult Function(DeletePembelianBarangEvent value)? deletePembelianBarang,
    required TResult orElse(),
  }) {
    if (updatePembelianBarang != null) {
      return updatePembelianBarang(this);
    }
    return orElse();
  }
}

abstract class UpdatePembelianBarangEvent implements PembelianbarangEvent {
  const factory UpdatePembelianBarangEvent(
      final PembelianBarang pembelianBarang,
      final String pembelianBarangId) = _$UpdatePembelianBarangEventImpl;

  PembelianBarang get pembelianBarang;
  String get pembelianBarangId;
  @JsonKey(ignore: true)
  _$$UpdatePembelianBarangEventImplCopyWith<_$UpdatePembelianBarangEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePembelianBarangEventImplCopyWith<$Res> {
  factory _$$DeletePembelianBarangEventImplCopyWith(
          _$DeletePembelianBarangEventImpl value,
          $Res Function(_$DeletePembelianBarangEventImpl) then) =
      __$$DeletePembelianBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pembelianBarangId});
}

/// @nodoc
class __$$DeletePembelianBarangEventImplCopyWithImpl<$Res>
    extends _$PembelianbarangEventCopyWithImpl<$Res,
        _$DeletePembelianBarangEventImpl>
    implements _$$DeletePembelianBarangEventImplCopyWith<$Res> {
  __$$DeletePembelianBarangEventImplCopyWithImpl(
      _$DeletePembelianBarangEventImpl _value,
      $Res Function(_$DeletePembelianBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pembelianBarangId = null,
  }) {
    return _then(_$DeletePembelianBarangEventImpl(
      null == pembelianBarangId
          ? _value.pembelianBarangId
          : pembelianBarangId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePembelianBarangEventImpl implements DeletePembelianBarangEvent {
  const _$DeletePembelianBarangEventImpl(this.pembelianBarangId);

  @override
  final String pembelianBarangId;

  @override
  String toString() {
    return 'PembelianbarangEvent.deletePembelianBarang(pembelianBarangId: $pembelianBarangId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePembelianBarangEventImpl &&
            (identical(other.pembelianBarangId, pembelianBarangId) ||
                other.pembelianBarangId == pembelianBarangId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pembelianBarangId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePembelianBarangEventImplCopyWith<_$DeletePembelianBarangEventImpl>
      get copyWith => __$$DeletePembelianBarangEventImplCopyWithImpl<
          _$DeletePembelianBarangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PembelianBarang pembelianBarang, List<Barang> barang)
        addPembelianBarang,
    required TResult Function(
            PembelianBarang pembelianBarang, String pembelianBarangId)
        updatePembelianBarang,
    required TResult Function(String pembelianBarangId) deletePembelianBarang,
  }) {
    return deletePembelianBarang(pembelianBarangId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PembelianBarang pembelianBarang, List<Barang> barang)?
        addPembelianBarang,
    TResult? Function(
            PembelianBarang pembelianBarang, String pembelianBarangId)?
        updatePembelianBarang,
    TResult? Function(String pembelianBarangId)? deletePembelianBarang,
  }) {
    return deletePembelianBarang?.call(pembelianBarangId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PembelianBarang pembelianBarang, List<Barang> barang)?
        addPembelianBarang,
    TResult Function(PembelianBarang pembelianBarang, String pembelianBarangId)?
        updatePembelianBarang,
    TResult Function(String pembelianBarangId)? deletePembelianBarang,
    required TResult orElse(),
  }) {
    if (deletePembelianBarang != null) {
      return deletePembelianBarang(pembelianBarangId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPembelianBarangEvent value) addPembelianBarang,
    required TResult Function(UpdatePembelianBarangEvent value)
        updatePembelianBarang,
    required TResult Function(DeletePembelianBarangEvent value)
        deletePembelianBarang,
  }) {
    return deletePembelianBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPembelianBarangEvent value)? addPembelianBarang,
    TResult? Function(UpdatePembelianBarangEvent value)? updatePembelianBarang,
    TResult? Function(DeletePembelianBarangEvent value)? deletePembelianBarang,
  }) {
    return deletePembelianBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPembelianBarangEvent value)? addPembelianBarang,
    TResult Function(UpdatePembelianBarangEvent value)? updatePembelianBarang,
    TResult Function(DeletePembelianBarangEvent value)? deletePembelianBarang,
    required TResult orElse(),
  }) {
    if (deletePembelianBarang != null) {
      return deletePembelianBarang(this);
    }
    return orElse();
  }
}

abstract class DeletePembelianBarangEvent implements PembelianbarangEvent {
  const factory DeletePembelianBarangEvent(final String pembelianBarangId) =
      _$DeletePembelianBarangEventImpl;

  String get pembelianBarangId;
  @JsonKey(ignore: true)
  _$$DeletePembelianBarangEventImplCopyWith<_$DeletePembelianBarangEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'penjualanbarang_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PenjualanbarangEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PenjualanBarang penjualanBarang, List<Barang> barang)
        addPenjualanBarang,
    required TResult Function(
            PenjualanBarang penjualanBarang, String penjualanBarangId)
        updatePenjualanBarang,
    required TResult Function(String penjualanBarangId) deletePenjualanBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PenjualanBarang penjualanBarang, List<Barang> barang)?
        addPenjualanBarang,
    TResult? Function(
            PenjualanBarang penjualanBarang, String penjualanBarangId)?
        updatePenjualanBarang,
    TResult? Function(String penjualanBarangId)? deletePenjualanBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PenjualanBarang penjualanBarang, List<Barang> barang)?
        addPenjualanBarang,
    TResult Function(PenjualanBarang penjualanBarang, String penjualanBarangId)?
        updatePenjualanBarang,
    TResult Function(String penjualanBarangId)? deletePenjualanBarang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPenjualanBarangEvent value) addPenjualanBarang,
    required TResult Function(UpdatePenjualanBarangEvent value)
        updatePenjualanBarang,
    required TResult Function(DeletePenjualanBarangEvent value)
        deletePenjualanBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPenjualanBarangEvent value)? addPenjualanBarang,
    TResult? Function(UpdatePenjualanBarangEvent value)? updatePenjualanBarang,
    TResult? Function(DeletePenjualanBarangEvent value)? deletePenjualanBarang,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPenjualanBarangEvent value)? addPenjualanBarang,
    TResult Function(UpdatePenjualanBarangEvent value)? updatePenjualanBarang,
    TResult Function(DeletePenjualanBarangEvent value)? deletePenjualanBarang,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenjualanbarangEventCopyWith<$Res> {
  factory $PenjualanbarangEventCopyWith(PenjualanbarangEvent value,
          $Res Function(PenjualanbarangEvent) then) =
      _$PenjualanbarangEventCopyWithImpl<$Res, PenjualanbarangEvent>;
}

/// @nodoc
class _$PenjualanbarangEventCopyWithImpl<$Res,
        $Val extends PenjualanbarangEvent>
    implements $PenjualanbarangEventCopyWith<$Res> {
  _$PenjualanbarangEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddPenjualanBarangEventImplCopyWith<$Res> {
  factory _$$AddPenjualanBarangEventImplCopyWith(
          _$AddPenjualanBarangEventImpl value,
          $Res Function(_$AddPenjualanBarangEventImpl) then) =
      __$$AddPenjualanBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PenjualanBarang penjualanBarang, List<Barang> barang});

  $PenjualanBarangCopyWith<$Res> get penjualanBarang;
}

/// @nodoc
class __$$AddPenjualanBarangEventImplCopyWithImpl<$Res>
    extends _$PenjualanbarangEventCopyWithImpl<$Res,
        _$AddPenjualanBarangEventImpl>
    implements _$$AddPenjualanBarangEventImplCopyWith<$Res> {
  __$$AddPenjualanBarangEventImplCopyWithImpl(
      _$AddPenjualanBarangEventImpl _value,
      $Res Function(_$AddPenjualanBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? penjualanBarang = null,
    Object? barang = null,
  }) {
    return _then(_$AddPenjualanBarangEventImpl(
      null == penjualanBarang
          ? _value.penjualanBarang
          : penjualanBarang // ignore: cast_nullable_to_non_nullable
              as PenjualanBarang,
      null == barang
          ? _value._barang
          : barang // ignore: cast_nullable_to_non_nullable
              as List<Barang>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PenjualanBarangCopyWith<$Res> get penjualanBarang {
    return $PenjualanBarangCopyWith<$Res>(_value.penjualanBarang, (value) {
      return _then(_value.copyWith(penjualanBarang: value));
    });
  }
}

/// @nodoc

class _$AddPenjualanBarangEventImpl implements AddPenjualanBarangEvent {
  const _$AddPenjualanBarangEventImpl(
      this.penjualanBarang, final List<Barang> barang)
      : _barang = barang;

  @override
  final PenjualanBarang penjualanBarang;
  final List<Barang> _barang;
  @override
  List<Barang> get barang {
    if (_barang is EqualUnmodifiableListView) return _barang;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barang);
  }

  @override
  String toString() {
    return 'PenjualanbarangEvent.addPenjualanBarang(penjualanBarang: $penjualanBarang, barang: $barang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPenjualanBarangEventImpl &&
            (identical(other.penjualanBarang, penjualanBarang) ||
                other.penjualanBarang == penjualanBarang) &&
            const DeepCollectionEquality().equals(other._barang, _barang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, penjualanBarang,
      const DeepCollectionEquality().hash(_barang));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPenjualanBarangEventImplCopyWith<_$AddPenjualanBarangEventImpl>
      get copyWith => __$$AddPenjualanBarangEventImplCopyWithImpl<
          _$AddPenjualanBarangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PenjualanBarang penjualanBarang, List<Barang> barang)
        addPenjualanBarang,
    required TResult Function(
            PenjualanBarang penjualanBarang, String penjualanBarangId)
        updatePenjualanBarang,
    required TResult Function(String penjualanBarangId) deletePenjualanBarang,
  }) {
    return addPenjualanBarang(penjualanBarang, barang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PenjualanBarang penjualanBarang, List<Barang> barang)?
        addPenjualanBarang,
    TResult? Function(
            PenjualanBarang penjualanBarang, String penjualanBarangId)?
        updatePenjualanBarang,
    TResult? Function(String penjualanBarangId)? deletePenjualanBarang,
  }) {
    return addPenjualanBarang?.call(penjualanBarang, barang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PenjualanBarang penjualanBarang, List<Barang> barang)?
        addPenjualanBarang,
    TResult Function(PenjualanBarang penjualanBarang, String penjualanBarangId)?
        updatePenjualanBarang,
    TResult Function(String penjualanBarangId)? deletePenjualanBarang,
    required TResult orElse(),
  }) {
    if (addPenjualanBarang != null) {
      return addPenjualanBarang(penjualanBarang, barang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPenjualanBarangEvent value) addPenjualanBarang,
    required TResult Function(UpdatePenjualanBarangEvent value)
        updatePenjualanBarang,
    required TResult Function(DeletePenjualanBarangEvent value)
        deletePenjualanBarang,
  }) {
    return addPenjualanBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPenjualanBarangEvent value)? addPenjualanBarang,
    TResult? Function(UpdatePenjualanBarangEvent value)? updatePenjualanBarang,
    TResult? Function(DeletePenjualanBarangEvent value)? deletePenjualanBarang,
  }) {
    return addPenjualanBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPenjualanBarangEvent value)? addPenjualanBarang,
    TResult Function(UpdatePenjualanBarangEvent value)? updatePenjualanBarang,
    TResult Function(DeletePenjualanBarangEvent value)? deletePenjualanBarang,
    required TResult orElse(),
  }) {
    if (addPenjualanBarang != null) {
      return addPenjualanBarang(this);
    }
    return orElse();
  }
}

abstract class AddPenjualanBarangEvent implements PenjualanbarangEvent {
  const factory AddPenjualanBarangEvent(
          final PenjualanBarang penjualanBarang, final List<Barang> barang) =
      _$AddPenjualanBarangEventImpl;

  PenjualanBarang get penjualanBarang;
  List<Barang> get barang;
  @JsonKey(ignore: true)
  _$$AddPenjualanBarangEventImplCopyWith<_$AddPenjualanBarangEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePenjualanBarangEventImplCopyWith<$Res> {
  factory _$$UpdatePenjualanBarangEventImplCopyWith(
          _$UpdatePenjualanBarangEventImpl value,
          $Res Function(_$UpdatePenjualanBarangEventImpl) then) =
      __$$UpdatePenjualanBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PenjualanBarang penjualanBarang, String penjualanBarangId});

  $PenjualanBarangCopyWith<$Res> get penjualanBarang;
}

/// @nodoc
class __$$UpdatePenjualanBarangEventImplCopyWithImpl<$Res>
    extends _$PenjualanbarangEventCopyWithImpl<$Res,
        _$UpdatePenjualanBarangEventImpl>
    implements _$$UpdatePenjualanBarangEventImplCopyWith<$Res> {
  __$$UpdatePenjualanBarangEventImplCopyWithImpl(
      _$UpdatePenjualanBarangEventImpl _value,
      $Res Function(_$UpdatePenjualanBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? penjualanBarang = null,
    Object? penjualanBarangId = null,
  }) {
    return _then(_$UpdatePenjualanBarangEventImpl(
      null == penjualanBarang
          ? _value.penjualanBarang
          : penjualanBarang // ignore: cast_nullable_to_non_nullable
              as PenjualanBarang,
      null == penjualanBarangId
          ? _value.penjualanBarangId
          : penjualanBarangId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PenjualanBarangCopyWith<$Res> get penjualanBarang {
    return $PenjualanBarangCopyWith<$Res>(_value.penjualanBarang, (value) {
      return _then(_value.copyWith(penjualanBarang: value));
    });
  }
}

/// @nodoc

class _$UpdatePenjualanBarangEventImpl implements UpdatePenjualanBarangEvent {
  const _$UpdatePenjualanBarangEventImpl(
      this.penjualanBarang, this.penjualanBarangId);

  @override
  final PenjualanBarang penjualanBarang;
  @override
  final String penjualanBarangId;

  @override
  String toString() {
    return 'PenjualanbarangEvent.updatePenjualanBarang(penjualanBarang: $penjualanBarang, penjualanBarangId: $penjualanBarangId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePenjualanBarangEventImpl &&
            (identical(other.penjualanBarang, penjualanBarang) ||
                other.penjualanBarang == penjualanBarang) &&
            (identical(other.penjualanBarangId, penjualanBarangId) ||
                other.penjualanBarangId == penjualanBarangId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, penjualanBarang, penjualanBarangId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePenjualanBarangEventImplCopyWith<_$UpdatePenjualanBarangEventImpl>
      get copyWith => __$$UpdatePenjualanBarangEventImplCopyWithImpl<
          _$UpdatePenjualanBarangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PenjualanBarang penjualanBarang, List<Barang> barang)
        addPenjualanBarang,
    required TResult Function(
            PenjualanBarang penjualanBarang, String penjualanBarangId)
        updatePenjualanBarang,
    required TResult Function(String penjualanBarangId) deletePenjualanBarang,
  }) {
    return updatePenjualanBarang(penjualanBarang, penjualanBarangId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PenjualanBarang penjualanBarang, List<Barang> barang)?
        addPenjualanBarang,
    TResult? Function(
            PenjualanBarang penjualanBarang, String penjualanBarangId)?
        updatePenjualanBarang,
    TResult? Function(String penjualanBarangId)? deletePenjualanBarang,
  }) {
    return updatePenjualanBarang?.call(penjualanBarang, penjualanBarangId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PenjualanBarang penjualanBarang, List<Barang> barang)?
        addPenjualanBarang,
    TResult Function(PenjualanBarang penjualanBarang, String penjualanBarangId)?
        updatePenjualanBarang,
    TResult Function(String penjualanBarangId)? deletePenjualanBarang,
    required TResult orElse(),
  }) {
    if (updatePenjualanBarang != null) {
      return updatePenjualanBarang(penjualanBarang, penjualanBarangId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPenjualanBarangEvent value) addPenjualanBarang,
    required TResult Function(UpdatePenjualanBarangEvent value)
        updatePenjualanBarang,
    required TResult Function(DeletePenjualanBarangEvent value)
        deletePenjualanBarang,
  }) {
    return updatePenjualanBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPenjualanBarangEvent value)? addPenjualanBarang,
    TResult? Function(UpdatePenjualanBarangEvent value)? updatePenjualanBarang,
    TResult? Function(DeletePenjualanBarangEvent value)? deletePenjualanBarang,
  }) {
    return updatePenjualanBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPenjualanBarangEvent value)? addPenjualanBarang,
    TResult Function(UpdatePenjualanBarangEvent value)? updatePenjualanBarang,
    TResult Function(DeletePenjualanBarangEvent value)? deletePenjualanBarang,
    required TResult orElse(),
  }) {
    if (updatePenjualanBarang != null) {
      return updatePenjualanBarang(this);
    }
    return orElse();
  }
}

abstract class UpdatePenjualanBarangEvent implements PenjualanbarangEvent {
  const factory UpdatePenjualanBarangEvent(
      final PenjualanBarang penjualanBarang,
      final String penjualanBarangId) = _$UpdatePenjualanBarangEventImpl;

  PenjualanBarang get penjualanBarang;
  String get penjualanBarangId;
  @JsonKey(ignore: true)
  _$$UpdatePenjualanBarangEventImplCopyWith<_$UpdatePenjualanBarangEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePenjualanBarangEventImplCopyWith<$Res> {
  factory _$$DeletePenjualanBarangEventImplCopyWith(
          _$DeletePenjualanBarangEventImpl value,
          $Res Function(_$DeletePenjualanBarangEventImpl) then) =
      __$$DeletePenjualanBarangEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String penjualanBarangId});
}

/// @nodoc
class __$$DeletePenjualanBarangEventImplCopyWithImpl<$Res>
    extends _$PenjualanbarangEventCopyWithImpl<$Res,
        _$DeletePenjualanBarangEventImpl>
    implements _$$DeletePenjualanBarangEventImplCopyWith<$Res> {
  __$$DeletePenjualanBarangEventImplCopyWithImpl(
      _$DeletePenjualanBarangEventImpl _value,
      $Res Function(_$DeletePenjualanBarangEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? penjualanBarangId = null,
  }) {
    return _then(_$DeletePenjualanBarangEventImpl(
      null == penjualanBarangId
          ? _value.penjualanBarangId
          : penjualanBarangId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePenjualanBarangEventImpl implements DeletePenjualanBarangEvent {
  const _$DeletePenjualanBarangEventImpl(this.penjualanBarangId);

  @override
  final String penjualanBarangId;

  @override
  String toString() {
    return 'PenjualanbarangEvent.deletePenjualanBarang(penjualanBarangId: $penjualanBarangId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePenjualanBarangEventImpl &&
            (identical(other.penjualanBarangId, penjualanBarangId) ||
                other.penjualanBarangId == penjualanBarangId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, penjualanBarangId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePenjualanBarangEventImplCopyWith<_$DeletePenjualanBarangEventImpl>
      get copyWith => __$$DeletePenjualanBarangEventImplCopyWithImpl<
          _$DeletePenjualanBarangEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PenjualanBarang penjualanBarang, List<Barang> barang)
        addPenjualanBarang,
    required TResult Function(
            PenjualanBarang penjualanBarang, String penjualanBarangId)
        updatePenjualanBarang,
    required TResult Function(String penjualanBarangId) deletePenjualanBarang,
  }) {
    return deletePenjualanBarang(penjualanBarangId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PenjualanBarang penjualanBarang, List<Barang> barang)?
        addPenjualanBarang,
    TResult? Function(
            PenjualanBarang penjualanBarang, String penjualanBarangId)?
        updatePenjualanBarang,
    TResult? Function(String penjualanBarangId)? deletePenjualanBarang,
  }) {
    return deletePenjualanBarang?.call(penjualanBarangId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PenjualanBarang penjualanBarang, List<Barang> barang)?
        addPenjualanBarang,
    TResult Function(PenjualanBarang penjualanBarang, String penjualanBarangId)?
        updatePenjualanBarang,
    TResult Function(String penjualanBarangId)? deletePenjualanBarang,
    required TResult orElse(),
  }) {
    if (deletePenjualanBarang != null) {
      return deletePenjualanBarang(penjualanBarangId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPenjualanBarangEvent value) addPenjualanBarang,
    required TResult Function(UpdatePenjualanBarangEvent value)
        updatePenjualanBarang,
    required TResult Function(DeletePenjualanBarangEvent value)
        deletePenjualanBarang,
  }) {
    return deletePenjualanBarang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPenjualanBarangEvent value)? addPenjualanBarang,
    TResult? Function(UpdatePenjualanBarangEvent value)? updatePenjualanBarang,
    TResult? Function(DeletePenjualanBarangEvent value)? deletePenjualanBarang,
  }) {
    return deletePenjualanBarang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPenjualanBarangEvent value)? addPenjualanBarang,
    TResult Function(UpdatePenjualanBarangEvent value)? updatePenjualanBarang,
    TResult Function(DeletePenjualanBarangEvent value)? deletePenjualanBarang,
    required TResult orElse(),
  }) {
    if (deletePenjualanBarang != null) {
      return deletePenjualanBarang(this);
    }
    return orElse();
  }
}

abstract class DeletePenjualanBarangEvent implements PenjualanbarangEvent {
  const factory DeletePenjualanBarangEvent(final String penjualanBarangId) =
      _$DeletePenjualanBarangEventImpl;

  String get penjualanBarangId;
  @JsonKey(ignore: true)
  _$$DeletePenjualanBarangEventImplCopyWith<_$DeletePenjualanBarangEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

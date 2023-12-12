// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCityEvent {
  int? get countryId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityModel cityModel, int countryId) saveCity,
    required TResult Function(int? countryId) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityModel cityModel, int countryId)? saveCity,
    TResult? Function(int? countryId)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityModel cityModel, int countryId)? saveCity,
    TResult Function(int? countryId)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCountry value) saveCity,
    required TResult Function(_$Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCountry value)? saveCity,
    TResult? Function(_$Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCountry value)? saveCity,
    TResult Function(_$Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCityEventCopyWith<AddCityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCityEventCopyWith<$Res> {
  factory $AddCityEventCopyWith(
          AddCityEvent value, $Res Function(AddCityEvent) then) =
      _$AddCityEventCopyWithImpl<$Res, AddCityEvent>;
  @useResult
  $Res call({int countryId});
}

/// @nodoc
class _$AddCityEventCopyWithImpl<$Res, $Val extends AddCityEvent>
    implements $AddCityEventCopyWith<$Res> {
  _$AddCityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
  }) {
    return _then(_value.copyWith(
      countryId: null == countryId
          ? _value.countryId!
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveCountryImplCopyWith<$Res>
    implements $AddCityEventCopyWith<$Res> {
  factory _$$SaveCountryImplCopyWith(
          _$SaveCountryImpl value, $Res Function(_$SaveCountryImpl) then) =
      __$$SaveCountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CityModel cityModel, int countryId});

  $CityModelCopyWith<$Res> get cityModel;
}

/// @nodoc
class __$$SaveCountryImplCopyWithImpl<$Res>
    extends _$AddCityEventCopyWithImpl<$Res, _$SaveCountryImpl>
    implements _$$SaveCountryImplCopyWith<$Res> {
  __$$SaveCountryImplCopyWithImpl(
      _$SaveCountryImpl _value, $Res Function(_$SaveCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityModel = null,
    Object? countryId = null,
  }) {
    return _then(_$SaveCountryImpl(
      cityModel: null == cityModel
          ? _value.cityModel
          : cityModel // ignore: cast_nullable_to_non_nullable
              as CityModel,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res> get cityModel {
    return $CityModelCopyWith<$Res>(_value.cityModel, (value) {
      return _then(_value.copyWith(cityModel: value));
    });
  }
}

/// @nodoc

class _$SaveCountryImpl implements _SaveCountry {
  const _$SaveCountryImpl({required this.cityModel, required this.countryId});

  @override
  final CityModel cityModel;
  @override
  final int countryId;

  @override
  String toString() {
    return 'AddCityEvent.saveCity(cityModel: $cityModel, countryId: $countryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCountryImpl &&
            (identical(other.cityModel, cityModel) ||
                other.cityModel == cityModel) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityModel, countryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCountryImplCopyWith<_$SaveCountryImpl> get copyWith =>
      __$$SaveCountryImplCopyWithImpl<_$SaveCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityModel cityModel, int countryId) saveCity,
    required TResult Function(int? countryId) started,
  }) {
    return saveCity(cityModel, countryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityModel cityModel, int countryId)? saveCity,
    TResult? Function(int? countryId)? started,
  }) {
    return saveCity?.call(cityModel, countryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityModel cityModel, int countryId)? saveCity,
    TResult Function(int? countryId)? started,
    required TResult orElse(),
  }) {
    if (saveCity != null) {
      return saveCity(cityModel, countryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCountry value) saveCity,
    required TResult Function(_$Started value) started,
  }) {
    return saveCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCountry value)? saveCity,
    TResult? Function(_$Started value)? started,
  }) {
    return saveCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCountry value)? saveCity,
    TResult Function(_$Started value)? started,
    required TResult orElse(),
  }) {
    if (saveCity != null) {
      return saveCity(this);
    }
    return orElse();
  }
}

abstract class _SaveCountry implements AddCityEvent {
  const factory _SaveCountry(
      {required final CityModel cityModel,
      required final int countryId}) = _$SaveCountryImpl;

  CityModel get cityModel;
  @override
  int get countryId;
  @override
  @JsonKey(ignore: true)
  _$$SaveCountryImplCopyWith<_$SaveCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$StartedImplCopyWith<$Res>
    implements $AddCityEventCopyWith<$Res> {
  factory _$$$StartedImplCopyWith(
          _$$StartedImpl value, $Res Function(_$$StartedImpl) then) =
      __$$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? countryId});
}

/// @nodoc
class __$$$StartedImplCopyWithImpl<$Res>
    extends _$AddCityEventCopyWithImpl<$Res, _$$StartedImpl>
    implements _$$$StartedImplCopyWith<$Res> {
  __$$$StartedImplCopyWithImpl(
      _$$StartedImpl _value, $Res Function(_$$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = freezed,
  }) {
    return _then(_$$StartedImpl(
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$$StartedImpl implements _$Started {
  const _$$StartedImpl({required this.countryId});

  @override
  final int? countryId;

  @override
  String toString() {
    return 'AddCityEvent.started(countryId: $countryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$StartedImpl &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$StartedImplCopyWith<_$$StartedImpl> get copyWith =>
      __$$$StartedImplCopyWithImpl<_$$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityModel cityModel, int countryId) saveCity,
    required TResult Function(int? countryId) started,
  }) {
    return started(countryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityModel cityModel, int countryId)? saveCity,
    TResult? Function(int? countryId)? started,
  }) {
    return started?.call(countryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityModel cityModel, int countryId)? saveCity,
    TResult Function(int? countryId)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(countryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCountry value) saveCity,
    required TResult Function(_$Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCountry value)? saveCity,
    TResult? Function(_$Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCountry value)? saveCity,
    TResult Function(_$Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _$Started implements AddCityEvent {
  const factory _$Started({required final int? countryId}) = _$$StartedImpl;

  @override
  int? get countryId;
  @override
  @JsonKey(ignore: true)
  _$$$StartedImplCopyWith<_$$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) saved,
    required TResult Function() failed,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? saved,
    TResult? Function()? failed,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? saved,
    TResult Function()? failed,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Faild value) failed,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Faild value)? failed,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Faild value)? failed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCityStateCopyWith<$Res> {
  factory $AddCityStateCopyWith(
          AddCityState value, $Res Function(AddCityState) then) =
      _$AddCityStateCopyWithImpl<$Res, AddCityState>;
}

/// @nodoc
class _$AddCityStateCopyWithImpl<$Res, $Val extends AddCityState>
    implements $AddCityStateCopyWith<$Res> {
  _$AddCityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddCityStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddCityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) saved,
    required TResult Function() failed,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? saved,
    TResult? Function()? failed,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? saved,
    TResult Function()? failed,
    TResult Function()? loading,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Faild value) failed,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Faild value)? failed,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Faild value)? failed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddCityState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$AddCityStateCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SavedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'AddCityState.saved(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedImplCopyWith<_$SavedImpl> get copyWith =>
      __$$SavedImplCopyWithImpl<_$SavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) saved,
    required TResult Function() failed,
    required TResult Function() loading,
  }) {
    return saved(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? saved,
    TResult? Function()? failed,
    TResult? Function()? loading,
  }) {
    return saved?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? saved,
    TResult Function()? failed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Faild value) failed,
    required TResult Function(_Loading value) loading,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Faild value)? failed,
    TResult? Function(_Loading value)? loading,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Faild value)? failed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AddCityState {
  const factory _Saved({required final int id}) = _$SavedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$SavedImplCopyWith<_$SavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaildImplCopyWith<$Res> {
  factory _$$FaildImplCopyWith(
          _$FaildImpl value, $Res Function(_$FaildImpl) then) =
      __$$FaildImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaildImplCopyWithImpl<$Res>
    extends _$AddCityStateCopyWithImpl<$Res, _$FaildImpl>
    implements _$$FaildImplCopyWith<$Res> {
  __$$FaildImplCopyWithImpl(
      _$FaildImpl _value, $Res Function(_$FaildImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FaildImpl implements _Faild {
  const _$FaildImpl();

  @override
  String toString() {
    return 'AddCityState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaildImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) saved,
    required TResult Function() failed,
    required TResult Function() loading,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? saved,
    TResult? Function()? failed,
    TResult? Function()? loading,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? saved,
    TResult Function()? failed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Faild value) failed,
    required TResult Function(_Loading value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Faild value)? failed,
    TResult? Function(_Loading value)? loading,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Faild value)? failed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Faild implements AddCityState {
  const factory _Faild() = _$FaildImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AddCityStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AddCityState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) saved,
    required TResult Function() failed,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? saved,
    TResult? Function()? failed,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? saved,
    TResult Function()? failed,
    TResult Function()? loading,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Faild value) failed,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Faild value)? failed,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Faild value)? failed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddCityState {
  const factory _Loading() = _$LoadingImpl;
}

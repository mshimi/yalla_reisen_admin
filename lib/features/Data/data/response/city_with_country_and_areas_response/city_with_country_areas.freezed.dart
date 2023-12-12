// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_with_country_areas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityWithCountryAndAreasResponse _$CityWithCountryAndAreasResponseFromJson(
    Map<String, dynamic> json) {
  return _CityWithCountryAndAreasResponse.fromJson(json);
}

/// @nodoc
mixin _$CityWithCountryAndAreasResponse {
  CityModel get city => throw _privateConstructorUsedError;
  CountryModel get country => throw _privateConstructorUsedError;
  List<AreaModel>? get areas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityWithCountryAndAreasResponseCopyWith<CityWithCountryAndAreasResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityWithCountryAndAreasResponseCopyWith<$Res> {
  factory $CityWithCountryAndAreasResponseCopyWith(
          CityWithCountryAndAreasResponse value,
          $Res Function(CityWithCountryAndAreasResponse) then) =
      _$CityWithCountryAndAreasResponseCopyWithImpl<$Res,
          CityWithCountryAndAreasResponse>;
  @useResult
  $Res call({CityModel city, CountryModel country, List<AreaModel>? areas});

  $CityModelCopyWith<$Res> get city;
  $CountryModelCopyWith<$Res> get country;
}

/// @nodoc
class _$CityWithCountryAndAreasResponseCopyWithImpl<$Res,
        $Val extends CityWithCountryAndAreasResponse>
    implements $CityWithCountryAndAreasResponseCopyWith<$Res> {
  _$CityWithCountryAndAreasResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? country = null,
    Object? areas = freezed,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel,
      areas: freezed == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<AreaModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res> get city {
    return $CityModelCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<$Res> get country {
    return $CountryModelCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityWithCountryAndAreasResponseImplCopyWith<$Res>
    implements $CityWithCountryAndAreasResponseCopyWith<$Res> {
  factory _$$CityWithCountryAndAreasResponseImplCopyWith(
          _$CityWithCountryAndAreasResponseImpl value,
          $Res Function(_$CityWithCountryAndAreasResponseImpl) then) =
      __$$CityWithCountryAndAreasResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CityModel city, CountryModel country, List<AreaModel>? areas});

  @override
  $CityModelCopyWith<$Res> get city;
  @override
  $CountryModelCopyWith<$Res> get country;
}

/// @nodoc
class __$$CityWithCountryAndAreasResponseImplCopyWithImpl<$Res>
    extends _$CityWithCountryAndAreasResponseCopyWithImpl<$Res,
        _$CityWithCountryAndAreasResponseImpl>
    implements _$$CityWithCountryAndAreasResponseImplCopyWith<$Res> {
  __$$CityWithCountryAndAreasResponseImplCopyWithImpl(
      _$CityWithCountryAndAreasResponseImpl _value,
      $Res Function(_$CityWithCountryAndAreasResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? country = null,
    Object? areas = freezed,
  }) {
    return _then(_$CityWithCountryAndAreasResponseImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel,
      areas: freezed == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<AreaModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityWithCountryAndAreasResponseImpl
    implements _CityWithCountryAndAreasResponse {
  const _$CityWithCountryAndAreasResponseImpl(
      {required this.city, required this.country, final List<AreaModel>? areas})
      : _areas = areas;

  factory _$CityWithCountryAndAreasResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CityWithCountryAndAreasResponseImplFromJson(json);

  @override
  final CityModel city;
  @override
  final CountryModel country;
  final List<AreaModel>? _areas;
  @override
  List<AreaModel>? get areas {
    final value = _areas;
    if (value == null) return null;
    if (_areas is EqualUnmodifiableListView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CityWithCountryAndAreasResponse(city: $city, country: $country, areas: $areas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityWithCountryAndAreasResponseImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._areas, _areas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, city, country, const DeepCollectionEquality().hash(_areas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityWithCountryAndAreasResponseImplCopyWith<
          _$CityWithCountryAndAreasResponseImpl>
      get copyWith => __$$CityWithCountryAndAreasResponseImplCopyWithImpl<
          _$CityWithCountryAndAreasResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityWithCountryAndAreasResponseImplToJson(
      this,
    );
  }
}

abstract class _CityWithCountryAndAreasResponse
    implements CityWithCountryAndAreasResponse {
  const factory _CityWithCountryAndAreasResponse(
      {required final CityModel city,
      required final CountryModel country,
      final List<AreaModel>? areas}) = _$CityWithCountryAndAreasResponseImpl;

  factory _CityWithCountryAndAreasResponse.fromJson(Map<String, dynamic> json) =
      _$CityWithCountryAndAreasResponseImpl.fromJson;

  @override
  CityModel get city;
  @override
  CountryModel get country;
  @override
  List<AreaModel>? get areas;
  @override
  @JsonKey(ignore: true)
  _$$CityWithCountryAndAreasResponseImplCopyWith<
          _$CityWithCountryAndAreasResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

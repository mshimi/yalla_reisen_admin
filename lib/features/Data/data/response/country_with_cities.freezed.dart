// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_with_cities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryWithCitiesResponse _$CountryWithCitiesResponseFromJson(
    Map<String, dynamic> json) {
  return _CountryWithCitiesResponse.fromJson(json);
}

/// @nodoc
mixin _$CountryWithCitiesResponse {
  CountryModel get country => throw _privateConstructorUsedError;
  List<CityModel?> get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryWithCitiesResponseCopyWith<CountryWithCitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryWithCitiesResponseCopyWith<$Res> {
  factory $CountryWithCitiesResponseCopyWith(CountryWithCitiesResponse value,
          $Res Function(CountryWithCitiesResponse) then) =
      _$CountryWithCitiesResponseCopyWithImpl<$Res, CountryWithCitiesResponse>;
  @useResult
  $Res call({CountryModel country, List<CityModel?> cities});

  $CountryModelCopyWith<$Res> get country;
}

/// @nodoc
class _$CountryWithCitiesResponseCopyWithImpl<$Res,
        $Val extends CountryWithCitiesResponse>
    implements $CountryWithCitiesResponseCopyWith<$Res> {
  _$CountryWithCitiesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityModel?>,
    ) as $Val);
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
abstract class _$$CountryWithCitiesResponseImplCopyWith<$Res>
    implements $CountryWithCitiesResponseCopyWith<$Res> {
  factory _$$CountryWithCitiesResponseImplCopyWith(
          _$CountryWithCitiesResponseImpl value,
          $Res Function(_$CountryWithCitiesResponseImpl) then) =
      __$$CountryWithCitiesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountryModel country, List<CityModel?> cities});

  @override
  $CountryModelCopyWith<$Res> get country;
}

/// @nodoc
class __$$CountryWithCitiesResponseImplCopyWithImpl<$Res>
    extends _$CountryWithCitiesResponseCopyWithImpl<$Res,
        _$CountryWithCitiesResponseImpl>
    implements _$$CountryWithCitiesResponseImplCopyWith<$Res> {
  __$$CountryWithCitiesResponseImplCopyWithImpl(
      _$CountryWithCitiesResponseImpl _value,
      $Res Function(_$CountryWithCitiesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? cities = null,
  }) {
    return _then(_$CountryWithCitiesResponseImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityModel?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryWithCitiesResponseImpl implements _CountryWithCitiesResponse {
  const _$CountryWithCitiesResponseImpl(
      {required this.country, required final List<CityModel?> cities})
      : _cities = cities;

  factory _$CountryWithCitiesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryWithCitiesResponseImplFromJson(json);

  @override
  final CountryModel country;
  final List<CityModel?> _cities;
  @override
  List<CityModel?> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'CountryWithCitiesResponse(country: $country, cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryWithCitiesResponseImpl &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, country, const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryWithCitiesResponseImplCopyWith<_$CountryWithCitiesResponseImpl>
      get copyWith => __$$CountryWithCitiesResponseImplCopyWithImpl<
          _$CountryWithCitiesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryWithCitiesResponseImplToJson(
      this,
    );
  }
}

abstract class _CountryWithCitiesResponse implements CountryWithCitiesResponse {
  const factory _CountryWithCitiesResponse(
          {required final CountryModel country,
          required final List<CityModel?> cities}) =
      _$CountryWithCitiesResponseImpl;

  factory _CountryWithCitiesResponse.fromJson(Map<String, dynamic> json) =
      _$CountryWithCitiesResponseImpl.fromJson;

  @override
  CountryModel get country;
  @override
  List<CityModel?> get cities;
  @override
  @JsonKey(ignore: true)
  _$$CountryWithCitiesResponseImplCopyWith<_$CountryWithCitiesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

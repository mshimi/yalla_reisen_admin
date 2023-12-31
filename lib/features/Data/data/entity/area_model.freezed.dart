// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AreaModel _$AreaModelFromJson(Map<String, dynamic> json) {
  return _AreaModel.fromJson(json);
}

/// @nodoc
mixin _$AreaModel {
  int? get id => throw _privateConstructorUsedError;
  String? get areaName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<HotelModel>? get hotels => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  CountryModel? get country => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  CityModel? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaModelCopyWith<AreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaModelCopyWith<$Res> {
  factory $AreaModelCopyWith(AreaModel value, $Res Function(AreaModel) then) =
      _$AreaModelCopyWithImpl<$Res, AreaModel>;
  @useResult
  $Res call(
      {int? id,
      String? areaName,
      @JsonKey(includeIfNull: false) List<HotelModel>? hotels,
      @JsonKey(includeIfNull: false) CountryModel? country,
      @JsonKey(includeIfNull: false) CityModel? city});

  $CountryModelCopyWith<$Res>? get country;
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$AreaModelCopyWithImpl<$Res, $Val extends AreaModel>
    implements $AreaModelCopyWith<$Res> {
  _$AreaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? areaName = freezed,
    Object? hotels = freezed,
    Object? country = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      areaName: freezed == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String?,
      hotels: freezed == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelModel>?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryModelCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AreaModelImplCopyWith<$Res>
    implements $AreaModelCopyWith<$Res> {
  factory _$$AreaModelImplCopyWith(
          _$AreaModelImpl value, $Res Function(_$AreaModelImpl) then) =
      __$$AreaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? areaName,
      @JsonKey(includeIfNull: false) List<HotelModel>? hotels,
      @JsonKey(includeIfNull: false) CountryModel? country,
      @JsonKey(includeIfNull: false) CityModel? city});

  @override
  $CountryModelCopyWith<$Res>? get country;
  @override
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$AreaModelImplCopyWithImpl<$Res>
    extends _$AreaModelCopyWithImpl<$Res, _$AreaModelImpl>
    implements _$$AreaModelImplCopyWith<$Res> {
  __$$AreaModelImplCopyWithImpl(
      _$AreaModelImpl _value, $Res Function(_$AreaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? areaName = freezed,
    Object? hotels = freezed,
    Object? country = freezed,
    Object? city = freezed,
  }) {
    return _then(_$AreaModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      areaName: freezed == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String?,
      hotels: freezed == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelModel>?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaModelImpl implements _AreaModel {
  const _$AreaModelImpl(
      {this.id,
      this.areaName,
      @JsonKey(includeIfNull: false) final List<HotelModel>? hotels,
      @JsonKey(includeIfNull: false) this.country,
      @JsonKey(includeIfNull: false) this.city})
      : _hotels = hotels;

  factory _$AreaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? areaName;
  final List<HotelModel>? _hotels;
  @override
  @JsonKey(includeIfNull: false)
  List<HotelModel>? get hotels {
    final value = _hotels;
    if (value == null) return null;
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeIfNull: false)
  final CountryModel? country;
  @override
  @JsonKey(includeIfNull: false)
  final CityModel? city;

  @override
  String toString() {
    return 'AreaModel(id: $id, areaName: $areaName, hotels: $hotels, country: $country, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.areaName, areaName) ||
                other.areaName == areaName) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, areaName,
      const DeepCollectionEquality().hash(_hotels), country, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaModelImplCopyWith<_$AreaModelImpl> get copyWith =>
      __$$AreaModelImplCopyWithImpl<_$AreaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaModelImplToJson(
      this,
    );
  }
}

abstract class _AreaModel implements AreaModel {
  const factory _AreaModel(
      {final int? id,
      final String? areaName,
      @JsonKey(includeIfNull: false) final List<HotelModel>? hotels,
      @JsonKey(includeIfNull: false) final CountryModel? country,
      @JsonKey(includeIfNull: false) final CityModel? city}) = _$AreaModelImpl;

  factory _AreaModel.fromJson(Map<String, dynamic> json) =
      _$AreaModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get areaName;
  @override
  @JsonKey(includeIfNull: false)
  List<HotelModel>? get hotels;
  @override
  @JsonKey(includeIfNull: false)
  CountryModel? get country;
  @override
  @JsonKey(includeIfNull: false)
  CityModel? get city;
  @override
  @JsonKey(ignore: true)
  _$$AreaModelImplCopyWith<_$AreaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

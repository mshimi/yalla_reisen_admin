// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  int? get id => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;
  String? get cityCode => throw _privateConstructorUsedError;
  int? get imageId => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;
  int? get countryId => throw _privateConstructorUsedError;
  CountryModel? get countryModel => throw _privateConstructorUsedError;
  List<AreaModel>? get areas => throw _privateConstructorUsedError;
  CityImageModel? get cityImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res, CityModel>;
  @useResult
  $Res call(
      {int? id,
      String? cityName,
      String? cityCode,
      int? imageId,
      String? countryName,
      int? countryId,
      CountryModel? countryModel,
      List<AreaModel>? areas,
      CityImageModel? cityImage});

  $CountryModelCopyWith<$Res>? get countryModel;
  $CityImageModelCopyWith<$Res>? get cityImage;
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res, $Val extends CityModel>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cityName = freezed,
    Object? cityCode = freezed,
    Object? imageId = freezed,
    Object? countryName = freezed,
    Object? countryId = freezed,
    Object? countryModel = freezed,
    Object? areas = freezed,
    Object? cityImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityCode: freezed == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      countryModel: freezed == countryModel
          ? _value.countryModel
          : countryModel // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      areas: freezed == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<AreaModel>?,
      cityImage: freezed == cityImage
          ? _value.cityImage
          : cityImage // ignore: cast_nullable_to_non_nullable
              as CityImageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<$Res>? get countryModel {
    if (_value.countryModel == null) {
      return null;
    }

    return $CountryModelCopyWith<$Res>(_value.countryModel!, (value) {
      return _then(_value.copyWith(countryModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityImageModelCopyWith<$Res>? get cityImage {
    if (_value.cityImage == null) {
      return null;
    }

    return $CityImageModelCopyWith<$Res>(_value.cityImage!, (value) {
      return _then(_value.copyWith(cityImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityModelImplCopyWith<$Res>
    implements $CityModelCopyWith<$Res> {
  factory _$$CityModelImplCopyWith(
          _$CityModelImpl value, $Res Function(_$CityModelImpl) then) =
      __$$CityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? cityName,
      String? cityCode,
      int? imageId,
      String? countryName,
      int? countryId,
      CountryModel? countryModel,
      List<AreaModel>? areas,
      CityImageModel? cityImage});

  @override
  $CountryModelCopyWith<$Res>? get countryModel;
  @override
  $CityImageModelCopyWith<$Res>? get cityImage;
}

/// @nodoc
class __$$CityModelImplCopyWithImpl<$Res>
    extends _$CityModelCopyWithImpl<$Res, _$CityModelImpl>
    implements _$$CityModelImplCopyWith<$Res> {
  __$$CityModelImplCopyWithImpl(
      _$CityModelImpl _value, $Res Function(_$CityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cityName = freezed,
    Object? cityCode = freezed,
    Object? imageId = freezed,
    Object? countryName = freezed,
    Object? countryId = freezed,
    Object? countryModel = freezed,
    Object? areas = freezed,
    Object? cityImage = freezed,
  }) {
    return _then(_$CityModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityCode: freezed == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      countryModel: freezed == countryModel
          ? _value.countryModel
          : countryModel // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      areas: freezed == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<AreaModel>?,
      cityImage: freezed == cityImage
          ? _value.cityImage
          : cityImage // ignore: cast_nullable_to_non_nullable
              as CityImageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityModelImpl implements _CityModel {
  const _$CityModelImpl(
      {this.id,
      this.cityName,
      this.cityCode,
      this.imageId,
      this.countryName,
      this.countryId,
      this.countryModel,
      final List<AreaModel>? areas,
      this.cityImage})
      : _areas = areas;

  factory _$CityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? cityName;
  @override
  final String? cityCode;
  @override
  final int? imageId;
  @override
  final String? countryName;
  @override
  final int? countryId;
  @override
  final CountryModel? countryModel;
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
  final CityImageModel? cityImage;

  @override
  String toString() {
    return 'CityModel(id: $id, cityName: $cityName, cityCode: $cityCode, imageId: $imageId, countryName: $countryName, countryId: $countryId, countryModel: $countryModel, areas: $areas, cityImage: $cityImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.countryModel, countryModel) ||
                other.countryModel == countryModel) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            (identical(other.cityImage, cityImage) ||
                other.cityImage == cityImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cityName,
      cityCode,
      imageId,
      countryName,
      countryId,
      countryModel,
      const DeepCollectionEquality().hash(_areas),
      cityImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      __$$CityModelImplCopyWithImpl<_$CityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityModelImplToJson(
      this,
    );
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      {final int? id,
      final String? cityName,
      final String? cityCode,
      final int? imageId,
      final String? countryName,
      final int? countryId,
      final CountryModel? countryModel,
      final List<AreaModel>? areas,
      final CityImageModel? cityImage}) = _$CityModelImpl;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$CityModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get cityName;
  @override
  String? get cityCode;
  @override
  int? get imageId;
  @override
  String? get countryName;
  @override
  int? get countryId;
  @override
  CountryModel? get countryModel;
  @override
  List<AreaModel>? get areas;
  @override
  CityImageModel? get cityImage;
  @override
  @JsonKey(ignore: true)
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      id: json['id'] as int?,
      cityName: json['cityName'] as String?,
      cityCode: json['cityCode'] as String?,
      imageId: json['imageId'] as int?,
      countryName: json['countryName'] as String?,
      countryId: json['countryId'] as int?,
      countryModel: json['countryModel'] == null
          ? null
          : CountryModel.fromJson(json['countryModel'] as Map<String, dynamic>),
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => AreaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cityImage: json['cityImage'] == null
          ? null
          : CityImageModel.fromJson(json['cityImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cityName': instance.cityName,
      'cityCode': instance.cityCode,
      'imageId': instance.imageId,
      'countryName': instance.countryName,
      'countryId': instance.countryId,
      'countryModel': instance.countryModel,
      'areas': instance.areas,
      'cityImage': instance.cityImage,
    };

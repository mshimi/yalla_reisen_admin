// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_with_country_areas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityWithCountryAndAreasResponseImpl
    _$$CityWithCountryAndAreasResponseImplFromJson(Map<String, dynamic> json) =>
        _$CityWithCountryAndAreasResponseImpl(
          city: CityModel.fromJson(json['city'] as Map<String, dynamic>),
          country:
              CountryModel.fromJson(json['country'] as Map<String, dynamic>),
          areas: (json['areas'] as List<dynamic>?)
              ?.map((e) => AreaModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CityWithCountryAndAreasResponseImplToJson(
        _$CityWithCountryAndAreasResponseImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'areas': instance.areas,
    };

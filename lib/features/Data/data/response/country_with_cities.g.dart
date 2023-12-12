// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_with_cities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryWithCitiesResponseImpl _$$CountryWithCitiesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryWithCitiesResponseImpl(
      country: CountryModel.fromJson(json['country'] as Map<String, dynamic>),
      cities: (json['cities'] as List<dynamic>)
          .map((e) =>
              e == null ? null : CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountryWithCitiesResponseImplToJson(
        _$CountryWithCitiesResponseImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'cities': instance.cities,
    };

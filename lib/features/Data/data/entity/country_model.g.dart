// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      id: json['id'] as int,
      countryName: json['countryName'] as String,
      countryCode: json['countryCode'] as String,
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryName': instance.countryName,
      'countryCode': instance.countryCode,
      'cities': instance.cities,
    };

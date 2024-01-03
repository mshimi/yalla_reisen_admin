// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AreaModelImpl _$$AreaModelImplFromJson(Map<String, dynamic> json) =>
    _$AreaModelImpl(
      id: json['id'] as int?,
      areaName: json['areaName'] as String?,
      hotels: (json['hotels'] as List<dynamic>?)
          ?.map((e) => HotelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      country: json['country'] == null
          ? null
          : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AreaModelImplToJson(_$AreaModelImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'areaName': instance.areaName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hotels', instance.hotels);
  writeNotNull('country', instance.country);
  writeNotNull('city', instance.city);
  return val;
}

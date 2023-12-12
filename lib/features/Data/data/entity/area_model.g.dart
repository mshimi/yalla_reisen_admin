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
    );

Map<String, dynamic> _$$AreaModelImplToJson(_$AreaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'areaName': instance.areaName,
      'hotels': instance.hotels,
    };

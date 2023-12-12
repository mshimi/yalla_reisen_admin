// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImageModelImpl _$$CityImageModelImplFromJson(Map<String, dynamic> json) =>
    _$CityImageModelImpl(
      id: json['id'] as int?,
      imageName: json['imageName'] as String?,
      type: json['type'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CityImageModelImplToJson(
        _$CityImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageName': instance.imageName,
      'type': instance.type,
      'image': instance.image,
    };

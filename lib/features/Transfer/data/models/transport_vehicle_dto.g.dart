// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_vehicle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransportVehicleDTOImpl _$$TransportVehicleDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportVehicleDTOImpl(
      id: json['id'] as int?,
      type: json['type'] as String,
      minPassengers: json['minPassengers'] as int,
      maxPassengers: json['maxPassengers'] as int,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$TransportVehicleDTOImplToJson(
    _$TransportVehicleDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['type'] = instance.type;
  val['minPassengers'] = instance.minPassengers;
  val['maxPassengers'] = instance.maxPassengers;
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('updatedAt', instance.updatedAt);
  return val;
}

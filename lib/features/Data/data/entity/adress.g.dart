// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddresseModelImpl _$$AddresseModelImplFromJson(Map<String, dynamic> json) =>
    _$AddresseModelImpl(
      id: json['id'] as int?,
      street: json['street'] as String?,
      houseNr: json['houseNr'] as String?,
      telephone: json['telephone'] as String?,
      zipCode: json['zipCode'] as String?,
      hotel: json['hotel'] == null
          ? null
          : HotelModel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddresseModelImplToJson(_$AddresseModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('street', instance.street);
  writeNotNull('houseNr', instance.houseNr);
  writeNotNull('telephone', instance.telephone);
  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('hotel', instance.hotel);
  return val;
}

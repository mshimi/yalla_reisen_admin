// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferRateModelImpl _$$TransferRateModelImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['fromArea', 'id', 'toArea', 'nettPrice'],
  );
  return _$TransferRateModelImpl(
    fromArea: AreaModel.fromJson(json['fromArea'] as Map<String, dynamic>),
    id: json['id'] as int,
    toArea: AreaModel.fromJson(json['toArea'] as Map<String, dynamic>),
    nettPrice: (json['nettPrice'] as num).toDouble(),
  );
}

Map<String, dynamic> _$$TransferRateModelImplToJson(
        _$TransferRateModelImpl instance) =>
    <String, dynamic>{
      'fromArea': instance.fromArea,
      'id': instance.id,
      'toArea': instance.toArea,
      'nettPrice': instance.nettPrice,
    };

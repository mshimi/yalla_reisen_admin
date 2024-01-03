// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_rate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferRateRequestImpl _$$TransferRateRequestImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['id', 'fromAreaId', 'toAreaId', 'nettPrice'],
  );
  return _$TransferRateRequestImpl(
    id: json['id'] as int?,
    fromAreaId: json['fromAreaId'] as int,
    toAreaId: json['toAreaId'] as int,
    nettPrice: (json['nettPrice'] as num).toDouble(),
  );
}

Map<String, dynamic> _$$TransferRateRequestImplToJson(
    _$TransferRateRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['fromAreaId'] = instance.fromAreaId;
  val['toAreaId'] = instance.toAreaId;
  val['nettPrice'] = instance.nettPrice;
  return val;
}

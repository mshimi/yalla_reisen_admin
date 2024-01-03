// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageRequestImpl _$$PageRequestImplFromJson(Map<String, dynamic> json) =>
    _$PageRequestImpl(
      pageNumber: json['pageNumber'] as int?,
      pageSize: json['pageSize'] as int?,
      sortBy: json['sortBy'] as String?,
      sortDirection:
          $enumDecodeNullable(_$SortDirectionEnumMap, json['sortDirection']),
    );

Map<String, dynamic> _$$PageRequestImplToJson(_$PageRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pageNumber', instance.pageNumber);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('sortBy', instance.sortBy);
  writeNotNull('sortDirection', _$SortDirectionEnumMap[instance.sortDirection]);
  return val;
}

const _$SortDirectionEnumMap = {
  SortDirection.ASC: 0,
  SortDirection.DESC: 1,
};

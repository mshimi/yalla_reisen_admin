// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_response.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/pageable.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/sort.dart';

part 'page_request.freezed.dart';
part 'page_request.g.dart';

@unfreezed
class PageRequest with _$PageRequest {
  factory PageRequest({
    @JsonKey(includeIfNull: false) int? pageNumber,
    @JsonKey(includeIfNull: false) int? pageSize,
    @JsonKey(includeIfNull: false) String? sortBy,
    @JsonKey(includeIfNull: false) SortDirection? sortDirection,
  }) = _PageRequest;

  factory PageRequest.fromJson(Map<String, dynamic> json) =>
      _$PageRequestFromJson(json);
}

enum SortDirection {
  @JsonValue(0)
  ASC,
  @JsonValue(1)
  DESC;

  factory SortDirection.fromBool(bool ascending) {
    return ascending ? SortDirection.ASC : SortDirection.DESC;}
}





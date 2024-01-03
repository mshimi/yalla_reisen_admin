import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/pageable.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/sort.dart';

part 'page_response.freezed.dart';
part 'page_response.g.dart';

@freezed
@JsonSerializable(includeIfNull: false)
class PageResponse<T> with _$PageResponse<T> {
  const factory PageResponse({
    @protected required List<Map<String, dynamic>?> content,
    required Pageable pageable,
    required bool last,
    required int totalElements,
    required int totalPages,
    required int size,
    required int number,
    required Sort sort,
    required bool first,
    required int numberOfElements,
    required bool empty,
  }) = _PageResponse;

  factory PageResponse.fromJson(Map<String, dynamic> json) {
    return _$PageResponseFromJson(json);
  }


    static PageResponse get defaultPageResponse => const PageResponse(
      content: [],
      pageable: Pageable(
          pageNumber: 0,
          pageSize: 10,
          sort: Sort(empty: true, sorted: false, unsorted: true),
          offset: 10,
          paged: true,
          unpaged: false),
      last: true,
      totalElements: 0,
      totalPages: 0,
      size: 10,
      number: 0,
      sort: Sort(empty: true, sorted: false, unsorted: true),
      first: true,
      numberOfElements: 0,
      empty: true);
}

extension Content<T> on PageResponse<T> {
  List<T> getContent(T Function(Map<String, dynamic> json) fromJsonT) {
    if (content.isEmpty) {
      return [];
    }
    return content.map((e) => fromJsonT(e!)).toList();
  }
}

extension DefaultPageRequest on PageResponse {

}

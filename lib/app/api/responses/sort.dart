import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort.freezed.dart';
part 'sort.g.dart';

@freezed
class Sort with _$Sort {
  const factory Sort({
    required bool empty,
    required bool sorted,
    required bool unsorted,
  }) = _Sort;

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);
}

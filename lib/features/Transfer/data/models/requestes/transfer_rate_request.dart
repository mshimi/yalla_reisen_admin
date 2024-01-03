import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_rate_request.g.dart';
part 'transfer_rate_request.freezed.dart';

@freezed
class TransferRateRequest with _$TransferRateRequest {
  const factory TransferRateRequest({
    @JsonKey(disallowNullValue: true) int? id,
    @JsonKey(disallowNullValue: true) required int fromAreaId,
    @JsonKey(disallowNullValue: true) required int toAreaId,
    @JsonKey(disallowNullValue: true) required double nettPrice,
  }) = _TransferRateRequest;

  factory TransferRateRequest.fromJson(Map<String, dynamic> json) =>
      _$TransferRateRequestFromJson(json);
}

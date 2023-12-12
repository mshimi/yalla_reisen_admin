import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_request.g.dart';
part 'country_request.freezed.dart';

@freezed
class CountryRequest with _$CountryRequest {
  const factory CountryRequest(
      {required String countryName,
      required String countryCode}) = _CountryRequest;

  factory CountryRequest.fromJson(Map<String, dynamic> json) =>
      _$CountryRequestFromJson(json);
}

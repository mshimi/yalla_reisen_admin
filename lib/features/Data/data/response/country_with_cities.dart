import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';

part 'country_with_cities.freezed.dart';
part 'country_with_cities.g.dart';

@freezed
class CountryWithCitiesResponse with _$CountryWithCitiesResponse {
  const factory CountryWithCitiesResponse(
      {required CountryModel country,
      required List<CityModel?> cities,
      
      
      }) = _CountryWithCitiesResponse;

  factory CountryWithCitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$CountryWithCitiesResponseFromJson(json);


      
}

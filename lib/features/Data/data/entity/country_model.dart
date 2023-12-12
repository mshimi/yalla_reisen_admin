import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/response/country_with_cities.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  factory CountryModel(
      {required int id,
      required String countryName,
      required String countryCode,
      List<CityModel?>? cities}) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  factory CountryModel.fromCountryWithCitiesResponse(
      {required CountryWithCitiesResponse countryWithCitiesResponse}) {
    return CountryModel(
        countryCode: countryWithCitiesResponse.country.countryCode,
        countryName: countryWithCitiesResponse.country.countryName,
        cities: countryWithCitiesResponse.cities,
        id: countryWithCitiesResponse.country.id);
  }
}

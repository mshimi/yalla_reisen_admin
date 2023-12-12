import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';

part 'city_with_country_areas.freezed.dart';
part 'city_with_country_areas.g.dart';

@freezed
class CityWithCountryAndAreasResponse with _$CityWithCountryAndAreasResponse {
  const factory CityWithCountryAndAreasResponse({
    required CityModel city,
    required CountryModel country,
    List<AreaModel>? areas,
  }) = _CityWithCountryAndAreasResponse;

  factory CityWithCountryAndAreasResponse.fromJson(Map<String, dynamic> json) =>
      _$CityWithCountryAndAreasResponseFromJson(json);
}

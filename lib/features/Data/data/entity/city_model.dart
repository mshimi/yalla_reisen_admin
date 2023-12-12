import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/url.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_image_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/response/city_with_country_and_areas_response/city_with_country_areas.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel(
      {int? id,
      String? cityName,
      String? cityCode,
      int? imageId,
      String? countryName,
      int? countryId,
      CountryModel? countryModel,
      List<AreaModel>? areas,
      CityImageModel? cityImage}) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  factory CityModel.fromCityWithCountryAndAreas(
      {required CityWithCountryAndAreasResponse
          cityWithCountryAndAreasResponse}) {
    return CityModel(
        id: cityWithCountryAndAreasResponse.city.id,
        cityCode: cityWithCountryAndAreasResponse.city.cityCode,
        cityName: cityWithCountryAndAreasResponse.city.cityName,
        countryModel: cityWithCountryAndAreasResponse.country,
        countryId: cityWithCountryAndAreasResponse.city.countryId,
        countryName: cityWithCountryAndAreasResponse.city.countryName,
        areas: cityWithCountryAndAreasResponse.areas,
        imageId: cityWithCountryAndAreasResponse.city.imageId,
        cityImage:
            CityImageModel(id: cityWithCountryAndAreasResponse.city.imageId));
  }
}

extension CityImageExtention on CityModel {
  String? get imageLink => imageId == null
      ? null
      : "${ApiUrls.baseUrl}core/images/cityimage/$imageId";
}

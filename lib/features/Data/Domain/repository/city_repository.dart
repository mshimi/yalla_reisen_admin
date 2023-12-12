import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/response/city_with_country_and_areas_response/city_with_country_areas.dart';

abstract class CityRepository {
  Future<Either<ApiFailure, CityWithCountryAndAreasResponse>> getCityById(
      {required int id});

  Future<Either<ApiFailure, List<CityModel>>> getAllCities();

  Future<Either<ApiFailure, List<CityModel>>> findCitiesByKeyWord(
      {required String keyWord});

  Future<Either<ApiFailure, CityWithCountryAndAreasResponse>> saveCity(
      {required CityModel cityModel, required int countryId});

  Future<Either<ApiFailure, CityWithCountryAndAreasResponse>> updateCity(
      {required CityModel cityModel});

  Future<Either<ApiFailure, Unit>> deleteCity({required int id});

  Future<Either<ApiFailure, String>> uploadCityImage(
      {required int countryId, required MultipartFile file});

  Future<Either<ApiFailure, String>> deleteCityImage({required int imageId});
}

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/response/city_with_country_and_areas_response/city_with_country_areas.dart';

class CityRepositoryImpl implements CityRepository {
  final RestClient restClient;

  CityRepositoryImpl({required this.restClient});

  @override
  Future<Either<ApiFailure, Unit>> deleteCity({required int id}) async {
    try {
      await restClient.deleteCity(id: id);

      return const Right(unit);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, List<CityModel>>> findCitiesByKeyWord(
      {required String keyWord}) async {
    try {
      var response =
          await restClient.findCitiesByKeyWord(keyWord: {"keyword": keyWord});
      print(response);
      return Right(response);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, List<CityModel>>> getAllCities() async {
    try {
      var response = await restClient.getAllCities();
      return Right(response);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, CityWithCountryAndAreasResponse>> getCityById(
      {required int id}) async {
    try {
      return Right(await restClient.getCityById(id: id));
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, CityWithCountryAndAreasResponse>> saveCity(
      {required CityModel cityModel, required int countryId}) async {
    try {
      return Right(await restClient.saveCity(
          cityModel: cityModel, countryId: countryId));
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, CityWithCountryAndAreasResponse>> updateCity(
      {required CityModel cityModel}) async {
    try {
      var response =
          await restClient.updateCity(id: cityModel.id!, cityModel: cityModel);

      return Right(response);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, String>> uploadCityImage(
      {required int countryId, required MultipartFile file}) async {
    try {
      String response =
          await restClient.uploadImage(id: countryId, map: {"file": file});

      return Right(response);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, String>> deleteCityImage(
      {required int imageId}) async {
    try {
      var response = await restClient.deleteImage(id: imageId);
      return Right(response);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }
}

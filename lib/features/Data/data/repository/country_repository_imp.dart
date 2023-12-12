import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/country_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_request.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/response/country_with_cities.dart';

class CountryRepositoryImpel implements CountryRepositroy {
  RestClient restClient;
  CountryRepositoryImpel({required this.restClient});

  @override
  Future<Either<ApiFailure, Unit>> deleteCountry({required int id}) async {
    try {
      await restClient.deleteCountry(id: id);

      return const Right(unit);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, List<CountryModel>>> getAllCountries() async {
    try {
      var response = await restClient.getAllCountries();
      return Right(response);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, CountryWithCitiesResponse>> getCountryById(
      {required int id}) async {
    try {
      return Right(await restClient.getCountryById(id: id));
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, CountryWithCitiesResponse>> saveCountry(
      {required CountryRequest countryRequest}) async {
    try {
      return Right(
          await restClient.saveCountry(countryrequest: countryRequest));
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, CountryWithCitiesResponse>> updateCountry(
      {required CountryModel countryModel}) async {
    try {
      var response = await restClient.updateCountry(
          id: countryModel.id, countryModel: countryModel);

      print(response);
      return Right(response);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }

  @override
  Future<Either<ApiFailure, List<CountryModel>>> findCountriesByKeyWord(
      {required String keyWord}) async {
    try {
      var response = await restClient
          .findCountriesByKeyWord(keyWord: {"keyWord": keyWord});
      return Right(response);
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_request.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/response/country_with_cities.dart';

abstract class CountryRepositroy {
  Future<Either<ApiFailure, CountryWithCitiesResponse>> getCountryById(
      {required int id});

  Future<Either<ApiFailure, List<CountryModel>>> getAllCountries();

  Future<Either<ApiFailure, List<CountryModel>>> findCountriesByKeyWord(
      {required String keyWord});

  Future<Either<ApiFailure, CountryWithCitiesResponse>> saveCountry(
      {required CountryRequest countryRequest});

  Future<Either<ApiFailure, CountryWithCitiesResponse>> updateCountry(
      {required CountryModel countryModel});

  Future<Either<ApiFailure, Unit>> deleteCountry({required int id});
}

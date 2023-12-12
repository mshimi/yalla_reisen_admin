

import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
import 'package:yalla_reisen_withspringboot/app/api/url.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/authentication_response/authentication_response.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/login_request/login_request.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/entities/user/user.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_request.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/response/city_with_country_and_areas_response/city_with_country_areas.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/response/country_with_cities.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: ApiUrls.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

// *** Auth ***//
  @POST('auth/signin')
  Future<AuthenticationResponse> login(
      {@Body() required LoginRequest loginRequest});

  @GET('auth/info')
  Future<User> getUserInfo();

  @DELETE("admin/core/images/cityimage/{id}")
  Future<String> deleteImage({@Path("id") required int id});

  @POST("admin/core/city/{id}/cityimage")
  Future<String> uploadImage(
      {@Path("id") required int id,
      @Part(name: "file") required Map<String, MultipartFile> map});

// *** City ***//
  @PUT("admin/core/cities/{id}")
  Future<CityWithCountryAndAreasResponse> updateCity(
      {@Path('id') required int id, @Queries() required CityModel cityModel});

  @GET('core/cities/{id}')
  Future<CityWithCountryAndAreasResponse> getCityById(
      {@Path('id') required int id});

  @GET('core/cities')
  Future<List<CityModel>> getAllCities();

  @GET('core/cities/filter')
  Future<List<CityModel>> findCitiesByKeyWord(
      {@Queries() required Map<String, String> keyWord});

  @POST("admin/core/countries/{id}/cities")
  Future<CityWithCountryAndAreasResponse> saveCity(
      {@Path("id") required int countryId,
      @Queries() required CityModel cityModel});

  @DELETE("admin/core/cities/{id}")
  Future<void> deleteCity({@Path('id') required int id});

// *** Country ***//
  @PUT("admin/core/countries/{id}")
  Future<CountryWithCitiesResponse> updateCountry(
      {@Path('id') required int id,
      @Queries() required CountryModel countryModel});

  @GET('core/countries/{id}')
  Future<CountryWithCitiesResponse> getCountryById(
      {@Path('id') required int id});

  @GET('core/countries')
  Future<List<CountryModel>> getAllCountries();

  @GET('core/countries/search')
  Future<List<CountryModel>> findCountriesByKeyWord(
      {@Queries() required Map<String, String> keyWord});

  @POST("admin/core/countries")
  Future<CountryWithCitiesResponse> saveCountry(
      {@Queries() required CountryRequest countryrequest});

  @DELETE("admin/core/countries/{id}")
  Future<void> deleteCountry({@Path('id') required int id});
}

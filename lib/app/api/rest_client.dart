import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_request.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_response.dart';
import 'package:yalla_reisen_withspringboot/app/api/url.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/authentication_response/authentication_response.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/login_request/login_request.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/entities/user/user.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/area.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/adress.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_request.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/hotel_model.dart';
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

// *** Hotels *** //

  @GET("core/hotels")
  Future<PageResponse<HotelModel>> getAllHotels(
      {@Queries() required PageRequest pageRequest});

  @GET("core/hotels/{id}")
  Future<HotelModel> getHotelById({@Path("id") required int id});

  @DELETE("admin/core/hotels/{id}")
  Future<String> deleteHotel({@Path("id") required int id});

  @POST("admin/core/areas/{id}/hotels")
  Future<HotelModel> createHotel({
    @Path("id") required int areaId,
    @Queries() required HotelModel hotelModel,
    @Queries() required AddressModel addressModel,
  });

  @PUT("admin/core/areas/hotels/{id}")
  Future<HotelModel> updateHotel(
      {@Path("id") required int hotelId,
      @Queries() required HotelModel hotelModel});

// *** Areas *** //
  @GET("core/areas")
  Future<List<AreaModel>> getAllAreas();

  @GET("core/areas/search")
  Future<List<AreaModel>> searchAreaByKeyWord(
      {@Queries() required Map<String, String> keyword});

  @DELETE("admin/core/areas/{id}")
  Future<String> deleteArea({@Path("id") required int id});

  @GET("core/areas/{id}")
  Future<AreaModel> getAreaById({@Path("id") required int id});

  @POST("admin/core/cities/{id}/areas")
  Future<AreaModel> saveArea(
      {@Path("id") required int id, @Queries() required AreaModel areaModel});

  @PUT("admin/core/areas/{id}")
  Future<AreaModel> updateArea(
      {@Path("id") required int id, @Queries() required AreaModel areaModel});

  //** END **/

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
  Future<List<CityWithCountryAndAreasResponse>> findCitiesByKeyWord(
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

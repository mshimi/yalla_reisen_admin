import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yalla_reisen_withspringboot/app/api/dio.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/app/api/token_interceptor.dart';
import 'package:yalla_reisen_withspringboot/app/api/transfer_api/transfer_rest_client.dart';
import 'package:yalla_reisen_withspringboot/app/api/url.dart';
import 'package:yalla_reisen_withspringboot/app/file_picker.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/repositories/authentication_repository_impl.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/repositories/authentication_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/login_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/area_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/country_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/hotel_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/repository/area_repository_imp.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/repository/city_repository_imp.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/repository/country_repository_imp.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/repository/hotel_repository_imp.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/data/repositories/transport_vehicle_repository_impl.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/domain/repositories/transport_vehicle_repository.dart';

GetIt getIt = GetIt.instance;

Future<void> setup() async {
  Box hive = await Hive.openBox("myBox");

  getIt.registerSingleton(hive);

  getIt.registerLazySingleton(() => ApiDio.buildDioClient(
      base: ApiUrls.baseUrl, tokenInterceptor: TokenInterceptor()));

  getIt.registerLazySingleton(() => RestClient(getIt()));

  getIt.registerLazySingleton(() => TransferRestClient(getIt()));

  getIt
      .registerSingleton<AuthenticationBloc>(AuthenticationBloc(hive: getIt()));

  getIt.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(restClient: getIt()));

  getIt.registerFactory<LoginBloc>(
      () => LoginBloc(authenticationRepository: getIt()));

  getIt.registerLazySingleton<CountryRepositroy>(
      () => CountryRepositoryImpel(restClient: getIt()));

  getIt.registerLazySingleton<CityRepository>(
      () => CityRepositoryImpl(restClient: getIt()));

  getIt.registerLazySingleton<AreaRepository>(
      () => AreaRepositoryImpl(restClient: getIt()));

  getIt.registerLazySingleton<HotelRepository>(
      () => HotelRepositoryImpl(restClient: getIt()));

  getIt.registerSingleton<CustomFilePicker>(CustomFilePicker());

  // Transfer //

  getIt.registerLazySingleton<TransportVehicleRepository>(
      () => TransportVehicleRepositoryImpl(transferRestClient: getIt()));
}

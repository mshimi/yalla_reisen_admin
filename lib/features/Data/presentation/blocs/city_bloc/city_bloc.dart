import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/area_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';

part 'city_event.dart';
part 'city_state.dart';
part 'city_bloc.freezed.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final CityRepository cityRepository;
  AreaRepository areaRepository;
  CityBloc({required this.cityRepository, required this.areaRepository})
      : super(CityState.initial()) {
    on<CityEvent>((event, emit) async {
      if (state.maybeMap(
        orElse: () => true,
        initial: (value) => false,
      )) {
        emit(CityState.initial());
      }

      CityState? newState = await event.when(
        started: (id) async => await _getCityById(id),
        uploadImage: (image, cityId) async => await _updateImage(image, cityId),
        deleteImage: (cityImageId) async => await _deleteImage(cityImageId),
        delete: (id) async => await _deleteCity(id),
        update: (cityModel, countryId) => _updateCity(cityModel),
        deleteArea: (areaId, cityId) => _deleteArea(areaId, cityId),
      );

      if (newState != null) {
        emit(newState);
      }
    });
  }

  Future<CityState> _getCityById(int id) async {
    var response = await cityRepository.getCityById(id: id);

    return response.fold(
        (l) => const CityState.failed(),
        (r) => CityState.success(
            cityModel: CityModel.fromCityWithCountryAndAreas(
                cityWithCountryAndAreasResponse: r)));
  }

  Future<CityState> _updateCity(CityModel cityModel) async {
    var response = await cityRepository.updateCity(cityModel: cityModel);

    return response.fold(
        (l) => const CityState.initial(),
        (r) => CityState.success(
            cityModel: CityModel.fromCityWithCountryAndAreas(
                cityWithCountryAndAreasResponse: r)));
  }

  Future<CityState?> _deleteCity(int id) async {
    var response = await cityRepository.deleteCity(id: id);

    return (response.fold(
        (l) => const CityState.failed(), (r) => const CityState.deleted()));
  }

  Future<CityState> _updateImage(MultipartFile file, int cityId) async {
    var response =
        await cityRepository.uploadCityImage(file: file, countryId: cityId);

    return response.fold(
        (l) => _getCityById(cityId), (r) => _getCityById(cityId));
  }

  Future<CityState> _deleteImage(int cityImageId) async {
    var response = await cityRepository.deleteCityImage(imageId: cityImageId);
    return response.fold(
        (l) => _getCityById(cityImageId), (r) => _getCityById(cityImageId));
  }

  Future<CityState> _deleteArea(int areaId, cityId) async {
    await areaRepository.deleteArea(id: areaId);
    return _getCityById(cityId);
  }
}

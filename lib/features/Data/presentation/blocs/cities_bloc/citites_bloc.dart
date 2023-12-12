import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';

part 'citites_event.dart';
part 'citites_state.dart';
part 'citites_bloc.freezed.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final CityRepository cityRepository;
  CitiesBloc({required this.cityRepository}) : super(CitiesState.initial()) {
    on<CitiesEvent>((event, emit) async {
      if (state.maybeMap(
        orElse: () => false,
        initial: (i) => true,
      )) {
        emit(CitiesState.initial());
      }

      emit(await event.when(
        started: () async => await _getCountries(),
        refresh: () async {
          return await _getCountries();
        },
        filter: (keyWord) async => await _getFilteredCountries(keyWord),
      ));
    });
  }

  Future<CitiesState> _getCountries() async {
    Either<ApiFailure, List<CityModel>> response =
        await cityRepository.getAllCities();

    return response.fold((l) => const CitiesState.failed(),
        (r) => CitiesState.successGotData(cities: r));
  }

  Future<CitiesState> _getFilteredCountries(String keyWord) async {
    Either<ApiFailure, List<CityModel>> response =
        await cityRepository.findCitiesByKeyWord(keyWord: keyWord);

    return response.fold((l) => CitiesState.failed(apiFailure: l),
        (r) => CitiesState.successGotData(cities: r, isFilter: true));
  }
}

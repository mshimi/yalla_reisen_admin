import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/country.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/country_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';

part 'countries_event.dart';
part 'countries_state.dart';
part 'countries_bloc.freezed.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  CountryRepositroy countryRepositroy;
  CountriesBloc({required this.countryRepositroy})
      : super(CountriesState.initial()) {
    on<CountriesEvent>((event, emit) async {
      if (state.maybeMap(
        orElse: () => false,
        initial: (i) => true,
      )) {
        emit(CountriesState.initial());
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

  Future<CountriesState> _getCountries() async {
    Either<ApiFailure, List<CountryModel>> response =
        await countryRepositroy.getAllCountries();

    return response.fold((l) => CountriesState.failed(),
        (r) => CountriesState.successGotData(countries: r));
  }

  Future<CountriesState> _getFilteredCountries(String keyWord) async {
    Either<ApiFailure, List<CountryModel>> response =
        await countryRepositroy.findCountriesByKeyWord(keyWord: keyWord);

  return  response.fold((l) => CountriesState.failed(apiFailure: l), (r) => CountriesState.successGotData(countries: r, isFilter: true));
  }
}

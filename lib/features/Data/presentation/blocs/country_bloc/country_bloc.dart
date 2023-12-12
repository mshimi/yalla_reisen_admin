import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/country_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';

part 'country_event.dart';
part 'country_state.dart';
part 'country_bloc.freezed.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryRepositroy countryRepositroy;

  CountryBloc({required this.countryRepositroy})
      : super(CountryState.initial()) {
    on<CountryEvent>((event, emit) async {
      if (state.maybeMap(
        orElse: () => true,
        initial: (value) => false,
      )) {
        emit(CountryState.initial());
      }

      CountryState? newState = await event.when(
          started: (id) async => await _getCountryById(id),
          delete: (id) async => await _deleteCountry(id),
          update: (countrymodel) => _updateCountry(countrymodel));

      if (newState != null) {
        emit(newState);
      }
    });
  }

  Future<CountryState> _getCountryById(int id) async {
    var response = await countryRepositroy.getCountryById(id: id);

    return response.fold(
        (l) => const CountryState.failed(),
        (r) => CountryState.success(
            countryModel: CountryModel.fromCountryWithCitiesResponse(
                countryWithCitiesResponse: r)));
  }

  Future<CountryState> _updateCountry(CountryModel countryModel) async {
    var response =
        await countryRepositroy.updateCountry(countryModel: countryModel);

    return response.fold(
        (l) => const CountryState.initial(),
        (r) => CountryState.success(
            countryModel: CountryModel.fromCountryWithCitiesResponse(
                countryWithCitiesResponse: r)));
  }

  Future<CountryState?> _deleteCountry(int id) async {
    var response = await countryRepositroy.deleteCountry(id: id);

    return (response.fold((l) => const CountryState.failed(),
        (r) => const CountryState.deleted()));
  }

}

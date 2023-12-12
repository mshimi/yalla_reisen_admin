import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/country_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_request.dart';

part 'add_country_event.dart';
part 'add_country_state.dart';
part 'add_country_bloc.freezed.dart';

class AddCountryBloc extends Bloc<AddCountryEvent, AddCountryState> {
  CountryRepositroy countryRepositroy;
  AddCountryBloc({required this.countryRepositroy})
      : super(AddCountryState.initial()) {
    on<AddCountryEvent>((event, emit) async {
      emit(await event.when(saveCountry: (countryRequest) async {
        emit(const AddCountryState.loading());

        return await _SaveCountry(countryRequest: countryRequest);
      }));
    });
  }

  Future<AddCountryState> _SaveCountry(
      {required CountryRequest countryRequest}) async {
    var response =
        await countryRepositroy.saveCountry(countryRequest: countryRequest);

    return response.fold((l) => const AddCountryState.failed(),
        (r) => AddCountryState.saved(id: CountryModel.fromCountryWithCitiesResponse(countryWithCitiesResponse: r).id));
  }
}

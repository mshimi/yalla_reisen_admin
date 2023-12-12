import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';

part 'add_city_event.dart';
part 'add_city_state.dart';
part 'add_city_bloc.freezed.dart';

class AddCityBloc extends Bloc<AddCityEvent, AddCityState> {
  final CityRepository cityRepository;
  AddCityBloc({required this.cityRepository}) : super(AddCityState.initial()) {
    on<AddCityEvent>((event, emit) async {
      AddCityState? addCityState =
          await event.when(saveCity: (cityModel, countryId) async {
        emit(const AddCityState.loading());

        return await _SaveCountry(cityModel: cityModel, countryId: countryId);
      }, started: (int? countryId) {
        currentCountryId = countryId;
      });

      if (addCityState != null) {
        emit(addCityState);
      }
    });
  }

  Future<AddCityState> _SaveCountry(
      {required CityModel cityModel, required int countryId}) async {
    currentCountryId = countryId;

    var response = await cityRepository.saveCity(
        cityModel: cityModel, countryId: countryId);

    return response.fold(
        (l) => const AddCityState.failed(),
        (r) => AddCityState.saved(
            id: CityModel.fromCityWithCountryAndAreas(
                    cityWithCountryAndAreasResponse: r)
                .id!));
  }

  int? _currentCountryId;

  int? get currentCountryId {
    print("from Getter: $_currentCountryId");
    return _currentCountryId;
  }

  set currentCountryId(int? currentId) {
    print("from Setter: $currentId");

    _currentCountryId = currentId;
  }
}

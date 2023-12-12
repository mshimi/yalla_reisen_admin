part of 'add_city_bloc.dart';

@freezed
class AddCityEvent with _$AddCityEvent {
  const factory AddCityEvent.saveCity(
      {required CityModel cityModel, required int countryId}) = _SaveCountry;

  const factory AddCityEvent.started({required int? countryId}) = _$Started;
}

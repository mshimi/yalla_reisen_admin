part of 'add_country_bloc.dart';

@freezed
class AddCountryEvent with _$AddCountryEvent {
  const factory AddCountryEvent.saveCountry({required CountryRequest countryRequest}) = _SaveCountry;
}

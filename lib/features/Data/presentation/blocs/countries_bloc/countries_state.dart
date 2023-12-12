part of 'countries_bloc.dart';

@freezed
class CountriesState with _$CountriesState {
  const factory CountriesState.initial() = _Initial;
  const factory CountriesState.successGotData(
      {required List<CountryModel> countries,
      @Default(false) bool isFilter}) = _Success;
  const factory CountriesState.failed({ApiFailure? apiFailure}) = _Failed;
}

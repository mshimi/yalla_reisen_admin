part of 'countries_bloc.dart';

@freezed
class CountriesEvent with _$CountriesEvent {
  const factory CountriesEvent.started() = _Started;
  const factory CountriesEvent.refresh() = _Refresh;
  const factory CountriesEvent.filter({required String keyWord}) = _Filter;
}

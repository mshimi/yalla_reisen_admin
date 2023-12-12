part of 'country_bloc.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.started({required int id}) = _Started;
  const factory CountryEvent.delete({required int id}) = _Deleted;
  const factory CountryEvent.update({required CountryModel countryModel}) =
      _Updated;
}

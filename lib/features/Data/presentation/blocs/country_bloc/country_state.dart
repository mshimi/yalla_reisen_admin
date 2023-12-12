part of 'country_bloc.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.initial() = _Initial;
  const factory CountryState.success({required CountryModel countryModel}) =
      _Success;
  const factory CountryState.failed({ApiFailure? apiFailure}) = _Failed;
  const factory CountryState.deleted() = _DeletedState;
}

part of 'add_country_bloc.dart';

@freezed
class AddCountryState with _$AddCountryState {
  const factory AddCountryState.initial() = _Initial;
  const factory AddCountryState.saved({required int id}) = _Saved;
  const factory AddCountryState.failed() = _Faild;
  const factory AddCountryState.loading() = _Loading;
}

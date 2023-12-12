part of 'add_city_bloc.dart';

@freezed
class AddCityState with _$AddCityState {
  const factory AddCityState.initial() = _Initial;
  const factory AddCityState.saved({required int id}) = _Saved;
  const factory AddCityState.failed() = _Faild;
  const factory AddCityState.loading() = _Loading;
}

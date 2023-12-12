part of 'citites_bloc.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.initial() = _Initial;
  const factory CitiesState.successGotData(
      {required List<CityModel> cities,
      @Default(false) bool isFilter}) = _Success;
  const factory CitiesState.failed({ApiFailure? apiFailure}) = _Failed;
}

part of 'city_bloc.dart';

@freezed
class CityState with _$CityState {
  const factory CityState.initial() = _Initial;
  const factory CityState.success({required CityModel cityModel}) = _Success;
  const factory CityState.failed({ApiFailure? apiFailure}) = _Failed;
  const factory CityState.deleted() = _DeletedState;

  const factory CityState.imageUpdated() = _ImageUpdate;
}

part of 'citites_bloc.dart';

@freezed
class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.started() = _Started;
  const factory CitiesEvent.refresh() = _Refresh;
  const factory CitiesEvent.filter({required String keyWord}) = _Filter;
}

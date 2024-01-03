part of 'areas_bloc.dart';

@freezed
class AreasEvent with _$AreasEvent {
  const factory AreasEvent.started() = _Started;
  const factory AreasEvent.resetInstialState() = _Reset;
  const factory AreasEvent.refreshData() = _Refresh;
  const factory AreasEvent.sort(
      {required List<AreaModel> data,
      required int Function(AreaModel, AreaModel) compare}) = _Sort;
}

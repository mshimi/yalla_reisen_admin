part of 'hotels_bloc.dart';

@freezed
class HotelsEvent with _$HotelsEvent {
  const factory HotelsEvent.started() = _Started;
  const factory HotelsEvent.changePageNumber({int? pageNumber}) =
      _ChangePageNumber;

  const factory HotelsEvent.changePageSized({int? pageSize}) = _ChangePageSize;

  const factory HotelsEvent.changeSortedBy(
      {String? sortBy, SortDirection? sortDirection}) = _ChangeSortedBy;

  const factory HotelsEvent.deleteHotel({required int id}) = _DeleteHotel;
}

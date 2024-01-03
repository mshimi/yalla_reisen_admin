part of 'hotels_bloc.dart';

@freezed
class HotelsState with _$HotelsState {
  const factory HotelsState.initial() = _Initial;
   const factory HotelsState.hasData({required PageResponse pageResponse, required List<HotelModel> hotels}) = _HasData;
      const factory HotelsState.failed() = _Failed;

}

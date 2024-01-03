part of 'areas_bloc.dart';

@freezed
class AreasState with _$AreasState {
  const factory AreasState.initial() = _Initial;
  const factory AreasState.hasData({required List<AreaModel> areas}) = _HasData;
    const factory AreasState.failure() = _Failure;

}

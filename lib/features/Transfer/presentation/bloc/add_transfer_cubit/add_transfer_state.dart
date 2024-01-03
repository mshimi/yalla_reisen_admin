part of 'add_transfer_cubit.dart';

@freezed
class AddTransferState with _$AddTransferState {
  const factory AddTransferState.initial() = _Initial;

  const factory AddTransferState.chooseCityWidget(
      {required bool isCityPositionsChanged}) = _ChooseCityWidget;

  const factory AddTransferState.pageBodyWidget(
      {required CityModel cityModel1,
      required CityModel cityModel}) = _PageBodyWidget;
}

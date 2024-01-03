import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';

part 'add_transfer_state.dart';
part 'add_transfer_cubit.freezed.dart';

class AddTransferCubit extends Cubit<AddTransferState> {
  AddTransferCubit() : super(AddTransferState.initial());

  void changeCityPositions() {
    isCityPositionsChanged = !isCityPositionsChanged;

    emit(AddTransferState.chooseCityWidget(
        isCityPositionsChanged: isCityPositionsChanged));
  }

  void showBodyWidget() {
    if (_cityModel1 != null && _cityModel2 != null) {
      emit(AddTransferState.pageBodyWidget(
          cityModel1: cityModel1!, cityModel: cityModel2!));
    }
  }

  bool isCitiesEquals() {
    return _cityModel1 == _cityModel2;
  }

  void saveTransferRate() {
    if (cityModel1!.areas != null && cityModel2!.areas != null) {
      print("object");
    }
  }

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  CityModel? _cityModel1;
  CityModel? _cityModel2;

  bool isCityPositionsChanged = false;
  bool areCitiesSame() {
    return _cityModel1 == _cityModel2;
  }

  CityModel? get cityModel1 {
    if (isCityPositionsChanged) {
      return _cityModel2;
    }
    return _cityModel1;
  }

  CityModel? get cityModel2 {
    if (isCityPositionsChanged) {
      return _cityModel1;
    }
    return _cityModel2;
  }

  set cityModel1(CityModel? cityModel) {
    if (isCityPositionsChanged) {
      _cityModel2 = cityModel;
    } else {
      _cityModel1 = cityModel;
    }
  }

  set cityModel2(CityModel? cityModel) {
    if (isCityPositionsChanged) {
      _cityModel1 = cityModel;
    } else {
      _cityModel2 = cityModel;
    }
  }
}

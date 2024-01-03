// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/country.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/hotel_model.dart';

part 'area_model.freezed.dart';
part 'area_model.g.dart';

@freezed
class AreaModel with _$AreaModel {
  const factory AreaModel({
    int? id,
    String? areaName,
    @JsonKey(includeIfNull: false) List<HotelModel>? hotels,
    @JsonKey(includeIfNull: false) CountryModel? country,
    @JsonKey(includeIfNull: false) CityModel? city,
  }) = _AreaModel;

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);
}

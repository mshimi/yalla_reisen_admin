// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/adress.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/adress.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';

part 'hotel_model.g.dart';
part 'hotel_model.freezed.dart';

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? hotelName,
    @JsonKey(includeIfNull: false) AreaModel? area,
    @JsonKey(includeIfNull: false, name: "gcode") String? gCode,
    @JsonKey(includeIfNull: false) AddressModel? address,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}

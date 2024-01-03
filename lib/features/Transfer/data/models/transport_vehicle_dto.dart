// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transport_vehicle_dto.freezed.dart';
part 'transport_vehicle_dto.g.dart';

@unfreezed
class TransportVehicleDTO with _$TransportVehicleDTO {
  factory TransportVehicleDTO({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) required String type,
    @JsonKey(includeIfNull: false) required int minPassengers,
    @JsonKey(includeIfNull: false) required int maxPassengers,
    @JsonKey(includeIfNull: false) String? createdAt,
    @JsonKey(includeIfNull: false) String? updatedAt,
  }) = _TransportVehicleDTO;

  factory TransportVehicleDTO.fromJson(Map<String, dynamic> json) =>
      _$TransportVehicleDTOFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/hotel_model.dart';

part 'adress.freezed.dart';
part 'adress.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? street,
    @JsonKey(includeIfNull: false) String? houseNr,
    @JsonKey(includeIfNull: false) String? telephone,
     @JsonKey(includeIfNull: false) String? zipCode,
    @JsonKey(includeIfNull: false) HotelModel? hotel,
  }) = _AddresseModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_model.g.dart';
part 'hotel_model.freezed.dart';

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({int? id, String? hotelname}) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}

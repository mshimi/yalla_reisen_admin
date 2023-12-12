import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/url.dart';

part 'city_image_model.freezed.dart';
part 'city_image_model.g.dart';

@freezed
class CityImageModel with _$CityImageModel {
  const factory CityImageModel(
      {int? id,
      String? imageName,
      String? type,
      String? image}) = _CityImageModel;

  factory CityImageModel.fromJson(Map<String, dynamic> json) =>
      _$CityImageModelFromJson(json);
}

extension CityImageLink on CityImageModel {
  String? get imageLink =>
      id == null ? null : "${ApiUrls.baseUrl}core/images/cityimage/$id";
}

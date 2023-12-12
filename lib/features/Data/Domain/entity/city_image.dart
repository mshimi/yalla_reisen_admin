import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_image_model.dart';

import 'city.dart';

class CityImage {
  int id;
  String imageName;
  String type;
  City? city;

  CityImage(
      {this.city,
      required this.id,
      required this.imageName,
      required this.type});

  factory CityImage.fromModel(CityImageModel model) {
    return CityImage(id: model.id!, imageName: model.image!, type: model.type!);
  }
}

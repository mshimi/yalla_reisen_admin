import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/area.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/city_image.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/country.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';

class City {
  int id;
  String cityName;
  String cityCode;
  Country? country;
  List<Area>? areas;
  CityImage? cityImage;

  City(
      {required this.id,
      required this.cityImage,
      required this.cityCode,
      required this.cityName,
       this.country,
      this.areas});

  factory City.fromModel(CityModel model) {
    return City(
        id: model.id!,
        cityImage: model.cityImage == null ? null : CityImage.fromModel(model.cityImage!) ,
        cityCode: model.cityCode!,
        cityName: model.cityName!,
        areas: model.areas == null ? null : model.areas?.map((e) => Area.fromModel(e)).toList()
        
        );
  }
}

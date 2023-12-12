import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';

import 'city.dart';
import 'hotel.dart';

class Area {
  int id;
  String areaName;
  City? city;
  List<Hotel>? hotels;

  Area({required this.areaName, required this.id, this.hotels, this.city});

  factory Area.fromModel(AreaModel model) {
    return Area(areaName: model.areaName!, id: model.id!);
  }
}

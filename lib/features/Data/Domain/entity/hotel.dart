import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/area.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/hotel_model.dart';

import 'city.dart';

class Hotel {
  int id;
  String hotelName;

  Area? area;
  City? city;

  Hotel({this.area, this.city, required this.id, required this.hotelName});


  factory Hotel.fromModel(HotelModel model){

    return Hotel(id: 0, hotelName: "hotelName");
  }
}

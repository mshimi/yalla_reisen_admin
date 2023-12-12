import 'package:yalla_reisen_withspringboot/features/Data/Domain/entity/hotel.dart';

class Adresse {
  int id;
  String street;
  String houseNr;
  String ZipCode;
  String telephne;
  String code;

  Hotel? hotel;

  Adresse(
      {this.hotel,
      required this.ZipCode,
      required this.code,
      required this.houseNr,
      required this.id,
      required this.street,
      required this.telephne});
}

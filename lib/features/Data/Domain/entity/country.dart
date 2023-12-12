import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';

import 'city.dart';

class Country {
  int id;
  String countryName;
  String countryCode;
  List<City>? cities;

  Country(
      {required this.id,
      required this.cities,
      required this.countryCode,
      required this.countryName});

  factory Country.fromModel(CountryModel model) {
    return Country(
        id: model.id ?? 0,
        cities: model.cities == null
            ? null
            : model.cities!.map((e) => City.fromModel(e!)).toList(),
        countryCode: model.countryCode!,
        countryName: model.countryName!);
  }
}

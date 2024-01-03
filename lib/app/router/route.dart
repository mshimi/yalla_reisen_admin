// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/router/router.dart';

class AppRoute {
  String name;

  String path;
  IconData? icon;
  List<AppRoute?>? subRoutes;
  void Function(BuildContext, {int? id}) function;
  AppRoute(
      {required this.name,
      this.icon,
      required this.path,
      this.subRoutes,
      required this.function});
}

class AppRoutes {
  static final List<AppRoute> appRoutes = [
    AppRoute(
        function: (context, {id}) => HomeRoute().go(context),
        name: "Home",
        path: "/home",
        icon: Icons.home),
    AppRoute(
        function: (context, {id}) => UsersRoute().go(context),
        name: "Users",
        path: "/users",
        icon: Icons.person,
        subRoutes: []),
    AppRoute(
        function: (context, {id}) => CountriesRoute().go(context),
        name: "Data",
        path: "/data",
        icon: Icons.dataset_outlined,
        subRoutes: [
          AppRoute(
              function: (context, {id}) => CountriesRoute().go(context),
              name: "Countries",
              icon: Icons.map,
              path: "/data/countries",
              subRoutes: [
                AppRoute(
                    name: "Country",
                    path: "/data/countries/:id",
                    function: (context, {id}) => CountryRoute(id: id!)),
                AppRoute(
                    name: "Add Country",
                    path: "/data/countries/addcountry",
                    function: (context, {id}) => AddCountryRoute().go(context))
              ]),
          AppRoute(
              function: (context, {id}) => CitiesRoute().go(context),
              name: "Cities",
              icon: Icons.location_city,
              path: "/data/cities"),
          AppRoute(
              function: (context, {id}) => AreasRoute().go(context),
              name: "Areas",
              icon: Icons.location_city,
              path: "/data/areas"),
          AppRoute(
              function: (context, {id}) => HotelsRoute().go(context),
              name: "Hotels",
              icon: Icons.location_city,
              path: "/data/hotels"),
          AppRoute(
              function: (context, {id}) => AirPortsRoute().go(context),
              name: "AirPorts",
              icon: Icons.location_city,
              path: "/data/airports"),
        ]),
    AppRoute(
      function: (context, {id}) => TransferContractsRoute().go(context),
      name: "Transfer",
      path: "/transfer",
      icon: Icons.directions_bus_filled_rounded,
      subRoutes: [
        AppRoute(
          name: "Contracts",
          path: "/transfer/contracts",
          function: (context, {id}) => TransferContractsRoute().go(context),
        ),
        AppRoute(
          name: "New Contract",
          path: "/transfer/contracts/new",
          function: (context, {id}) => AddTransferContractsRoute().go(context),
        ),
        AppRoute(
          name: "vehicles",
          path: "/transfer/vehicles",
          function: (context, {id}) => TransferVehicleRoute().go(context),
        ),
        // AppRoute(
        //   name: "Bookings",
        //   path: "/transfer/bookings",
        //   function: (context, {id}) => TransferBookingsRoute().go(context),
        // ),
      ],
    ),
    AppRoute(
        function: (context, {id}) => ExcurtionsRoute().go(context),
        name: "Excurtions",
        path: "/excurtions",
        icon: Icons.beach_access),
    AppRoute(
        function: (context, {id}) => BookingsRoute().go(context),
        name: "Bookings",
        path: "/bookings",
        icon: Icons.bookmark_added_sharp),
    AppRoute(
        function: (context, {id}) => BazarRoute().go(context),
        name: "Bazar",
        path: "/bazar",
        icon: Icons.shopping_cart),
    AppRoute(
        function: (context, {id}) => SettingRoute().go(context),
        name: "Setting",
        path: "/setting",
        icon: Icons.settings),
  ];

  static bool isCurrentSelectedRoute(
      {required String path, required AppRoute appRoute}) {
    if (path.contains(appRoute.path)) {
      return true;
    }
    return false;
  }
}

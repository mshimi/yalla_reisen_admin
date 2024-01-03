import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';

import 'package:yalla_reisen_withspringboot/app/router/authenticationListner.dart';
import 'package:yalla_reisen_withspringboot/app/screens/home_page.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/pages/login_page.dart';

import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/add_city_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/add_country_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/add_hotel_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/areas_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/cities_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/city_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/countries_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/country_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/data_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/excurtion_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/hotels_page.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/presentation/pages/add_transfer_contract_page.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/presentation/pages/transfers_pages.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/presentation/pages/vehicles_page.dart';

part 'router.g.dart';

class AppRouter {
  String? requestedPath;
  final instialLocation = "/home";
  late final GoRouter _router = GoRouter(
    initialLocation: instialLocation,
    routes: $appRoutes,
    refreshListenable: AuthenticationListner(),
    redirect: (context, state) {
      final bool loggedIn = getIt<AuthenticationBloc>()
          .state
          .when(authenticated: (_) => true, unAuthenticated: () => false);

      final String loginLoc = const LoginRoute().location;
      final bool goingToLogin = state.matchedLocation == loginLoc;

      if (!loggedIn && !goingToLogin) {
        return const LoginRoute().location;
      }

      // the user is logged in and headed to /login, no need to login again
      if (loggedIn && goingToLogin) {
        return instialLocation;
      }

      return null;
    },
  );

  GoRouter get router => _router;
}

@TypedShellRoute<MyShellRoute>(routes: <TypedRoute<RouteData>>[
  TypedGoRoute<HomeRoute>(path: "/home"),
  TypedGoRoute<UsersRoute>(path: "/users"),
  TypedShellRoute<DataRoute>(routes: [
    TypedGoRoute<CountriesRoute>(
      path: "/data/countries",
      routes: [
        TypedGoRoute<AddCountryRoute>(path: "addcountry"),
      ],
    ),
    TypedGoRoute<CitiesRoute>(
      path: "/data/cities",
      routes: [
        TypedGoRoute<AddCityRoute>(path: "addcity"),
      ],
    ),
    TypedGoRoute<AreasRoute>(path: "/data/areas"),
    TypedGoRoute<HotelsRoute>(path: "/data/hotels", routes: []),
    TypedGoRoute<AirPortsRoute>(path: "/data/airports"),
    TypedGoRoute<AddHotelRoute>(path: "/data/hotels/newhotel"),
  ]),
  TypedGoRoute<CountryRoute>(path: "/data/countries/:id"),
  TypedGoRoute<CityRoute>(path: "/data/cities/:id"),
  TypedGoRoute<ExcurtionsRoute>(path: "/excurtions"),
  TypedShellRoute<TransfersRoute>(routes: [
    TypedGoRoute<TransferContractsRoute>(path: "/transfer/contracts"),
    TypedGoRoute<AddTransferContractsRoute>(path: "/transfer/contracts/new"),
    TypedGoRoute<TransferBookingsRoute>(path: "/transfer/bookings"),
    TypedGoRoute<TransferVehicleRoute>(path: "/transfer/vehicles"),
  ]),
  TypedGoRoute<BookingsRoute>(path: "/bookings"),
  TypedGoRoute<BazarRoute>(path: "/bazar"),
  TypedGoRoute<SettingRoute>(path: "/setting"),
])
class MyShellRoute extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return HomePage(
      navigator: navigator,
      path: state.uri.toString(),
    );
  }
}

class TransferContractsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: Container(
        child: Center(
          child: Text("All Transfer Contract"),
        ),
      ),
      transitionsBuilder: (_, a2, a, w) => SizeTransition(
        sizeFactor: a2,
        child: w,
      ),
    );
  }
}

class TransferBookingsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: Container(
        child: Center(
          child: Text("Transfer Bookings Route"),
        ),
      ),
      transitionsBuilder: (_, a2, a, w) => SizeTransition(
        sizeFactor: a2,
        child: w,
      ),
    );
  }
}

class AddTransferContractsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: AddTransferContractPage(),
      transitionsBuilder: (_, a2, a, w) => SizeTransition(
        sizeFactor: a2,
        child: w,
      ),
    );
  }
}

class TransferVehicleRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: VehiclePage(),
      transitionsBuilder: (_, a2, a, w) => SizeTransition(
        sizeFactor: a2,
        child: w,
      ),
    );
  }
}

class HomeRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: Container(
        child: Center(
          child: Text("Home"),
        ),
      ),
      transitionsBuilder: (_, a2, a, w) => SizeTransition(
        sizeFactor: a2,
        child: w,
      ),
    );
  }
}

class UsersRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Container(
      child: Center(
        child: Text("Users"),
      ),
    );
  }
}

class DataRoute extends ShellRouteData {
  @override
  Page<void> pageBuilder(
      BuildContext context, GoRouterState state, Widget navigator) {
    // TODO: implement pageBuilder
    return CustomTransitionPage(
        child: DataPage(
          navigator: navigator,
          path: state.uri.toString(),
        ),
        transitionsBuilder: (_, a1, a2, widget) => SizeTransition(
              sizeFactor: a1,
              child: widget,
            ));
  }
}

class TransfersRoute extends ShellRouteData {
  @override
  Page<void> pageBuilder(
      BuildContext context, GoRouterState state, Widget navigator) {
    // TODO: implement pageBuilder
    return CustomTransitionPage(
        child: TransfersPages(
          navigator: navigator,
          path: state.uri.toString(),
        ),
        transitionsBuilder: (_, a1, a2, widget) => SizeTransition(
              sizeFactor: a1,
              child: widget,
            ));
  }
}

class CountriesRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
        child: CountriesPage(),
        transitionsBuilder: (_, a1, a2, widget) {
          return SizeTransition(
            sizeFactor: a2,
            axis: Axis.vertical,
            child: widget,
          );
        });
  }
}

class CountryRoute extends GoRouteData {
  CountryRoute({required this.id});
  final int id;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
        child: CountryPage(
          id: id,
        ),
        transitionsBuilder: (_, a1, a2, widget) {
          return SizeTransition(
            sizeFactor: a2,
            axis: Axis.vertical,
            child: widget,
          );
        });
  }
}

class CityRoute extends GoRouteData {
  CityRoute({required this.id});
  final int id;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
        child: CityPage(
          id: id,
        ),
        transitionsBuilder: (_, a1, a2, widget) {
          return SizeTransition(
            sizeFactor: a2,
            axis: Axis.vertical,
            child: widget,
          );
        });
  }
}

class AddCountryRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
        child: AddCountryPage(),
        transitionsBuilder: (_, a1, a2, widget) => SizeTransition(
              sizeFactor: a2,
              axis: Axis.horizontal,
              child: widget,
            ));
  }
}

class AddHotelRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
        child: AddHotelPage(),
        transitionsBuilder: (_, a1, a2, widget) => SizeTransition(
              sizeFactor: a2,
              axis: Axis.horizontal,
              child: widget,
            ));
  }
}

class AddCityRoute extends GoRouteData {
  int? countryId;
  AddCityRoute({this.countryId});
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
        child: AddCityPage(
          countryId: countryId,
        ),
        transitionsBuilder: (_, a1, a2, widget) => SizeTransition(
              sizeFactor: a2,
              axis: Axis.horizontal,
              child: widget,
            ));
  }
}

class CitiesRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: CititesPage(),
      transitionsBuilder: (context, an1, an2, w) {
        return SizeTransition(
          sizeFactor: an2,
          child: w,
        );
      },
    );
  }
}

class AreasRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
        child: AreasPage(),
        transitionsBuilder: (context, an1, an2, w) {
          return SizeTransition(
            sizeFactor: an2,
            child: w,
          );
        });
  }
}

class HotelsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
        child: HotelsPage(),
        transitionsBuilder: (context, an1, an2, w) {
          return SizeTransition(
            sizeFactor: an2,
            child: w,
          );
        });
  }
}

class AirPortsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Container(
      child: Center(
        child: Text("Airports"),
      ),
    );
  }
}

class ExcurtionsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ExcurtionPage();
  }
}

class BookingsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Container(
      child: Center(
        child: Text("Bookings"),
      ),
    );
  }
}

class BazarRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Container(
      child: Center(
        child: Text("Bazar"),
      ),
    );
  }
}

class SettingRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Container(
      child: Center(
        child: Text("Settings"),
      ),
    );
  }
}

@TypedGoRoute<LoginRoute>(path: "/login")
class LoginRoute extends GoRouteData {
  const LoginRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginPage();
  }
}

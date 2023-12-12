import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/file_picker.dart';
import 'package:yalla_reisen_withspringboot/app/router/authenticationListner.dart';
import 'package:yalla_reisen_withspringboot/app/screens/home_page.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/pages/login_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/country_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/country_bloc/country_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/add_city_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/add_country_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/cities_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/city_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/countries_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/country_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/data_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/excurtion_page.dart';

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
        return LoginRoute().location;
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
    TypedGoRoute<HotelsRoute>(path: "/data/hotels"),
    TypedGoRoute<AirPortsRoute>(path: "/data/airports"),
  ]),
  TypedGoRoute<CountryRoute>(path: "/data/countries/:id"),
  TypedGoRoute<CityRoute>(path: "/data/cities/:id"),
  TypedGoRoute<ExcurtionsRoute>(path: "/excurtions"),
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
        child: Container(
          child: Center(
            child: Text("Areas"),
          ),
        ),
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
  Widget build(BuildContext context, GoRouterState state) {
    return Container(
      child: Center(
        child: Text("Hotels"),
      ),
    );
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

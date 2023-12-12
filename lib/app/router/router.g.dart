// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $myShellRoute,
      $loginRoute,
    ];

RouteBase get $myShellRoute => ShellRouteData.$route(
      factory: $MyShellRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/users',
          factory: $UsersRouteExtension._fromState,
        ),
        ShellRouteData.$route(
          factory: $DataRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: '/data/countries',
              factory: $CountriesRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'addcountry',
                  factory: $AddCountryRouteExtension._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: '/data/cities',
              factory: $CitiesRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'addcity',
                  factory: $AddCityRouteExtension._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: '/data/areas',
              factory: $AreasRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/data/hotels',
              factory: $HotelsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/data/airports',
              factory: $AirPortsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/data/countries/:id',
          factory: $CountryRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/data/cities/:id',
          factory: $CityRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/excurtions',
          factory: $ExcurtionsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/bookings',
          factory: $BookingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/bazar',
          factory: $BazarRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/setting',
          factory: $SettingRouteExtension._fromState,
        ),
      ],
    );

extension $MyShellRouteExtension on MyShellRoute {
  static MyShellRoute _fromState(GoRouterState state) => MyShellRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UsersRouteExtension on UsersRoute {
  static UsersRoute _fromState(GoRouterState state) => UsersRoute();

  String get location => GoRouteData.$location(
        '/users',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DataRouteExtension on DataRoute {
  static DataRoute _fromState(GoRouterState state) => DataRoute();
}

extension $CountriesRouteExtension on CountriesRoute {
  static CountriesRoute _fromState(GoRouterState state) => CountriesRoute();

  String get location => GoRouteData.$location(
        '/data/countries',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddCountryRouteExtension on AddCountryRoute {
  static AddCountryRoute _fromState(GoRouterState state) => AddCountryRoute();

  String get location => GoRouteData.$location(
        '/data/countries/addcountry',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CitiesRouteExtension on CitiesRoute {
  static CitiesRoute _fromState(GoRouterState state) => CitiesRoute();

  String get location => GoRouteData.$location(
        '/data/cities',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddCityRouteExtension on AddCityRoute {
  static AddCityRoute _fromState(GoRouterState state) => AddCityRoute(
        countryId: _$convertMapValue(
            'country-id', state.uri.queryParameters, int.parse),
      );

  String get location => GoRouteData.$location(
        '/data/cities/addcity',
        queryParams: {
          if (countryId != null) 'country-id': countryId!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AreasRouteExtension on AreasRoute {
  static AreasRoute _fromState(GoRouterState state) => AreasRoute();

  String get location => GoRouteData.$location(
        '/data/areas',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HotelsRouteExtension on HotelsRoute {
  static HotelsRoute _fromState(GoRouterState state) => HotelsRoute();

  String get location => GoRouteData.$location(
        '/data/hotels',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AirPortsRouteExtension on AirPortsRoute {
  static AirPortsRoute _fromState(GoRouterState state) => AirPortsRoute();

  String get location => GoRouteData.$location(
        '/data/airports',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CountryRouteExtension on CountryRoute {
  static CountryRoute _fromState(GoRouterState state) => CountryRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/data/countries/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CityRouteExtension on CityRoute {
  static CityRoute _fromState(GoRouterState state) => CityRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/data/cities/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ExcurtionsRouteExtension on ExcurtionsRoute {
  static ExcurtionsRoute _fromState(GoRouterState state) => ExcurtionsRoute();

  String get location => GoRouteData.$location(
        '/excurtions',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BookingsRouteExtension on BookingsRoute {
  static BookingsRoute _fromState(GoRouterState state) => BookingsRoute();

  String get location => GoRouteData.$location(
        '/bookings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BazarRouteExtension on BazarRoute {
  static BazarRoute _fromState(GoRouterState state) => BazarRoute();

  String get location => GoRouteData.$location(
        '/bazar',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingRouteExtension on SettingRoute {
  static SettingRoute _fromState(GoRouterState state) => SettingRoute();

  String get location => GoRouteData.$location(
        '/setting',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

import 'package:flutter/material.dart';
import 'package:yalla_reisen_withspringboot/app/router/router.dart';
import 'package:yalla_reisen_withspringboot/app/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme().theme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
    );
  }
}

import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get theme => ThemeData(
      useMaterial3: false,
      fontFamilyFallback: ["Roboto_Condensed"],
      colorScheme: _colorScheme,
      inputDecorationTheme: inputDecorationTheme,
      textTheme: textTheme);

  final TextTheme textTheme = TextTheme(
      labelLarge: ThemeData()
          .textTheme
          .labelLarge!
          .copyWith(fontWeight: FontWeight.bold));

  final ColorScheme _colorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.indigo,
    backgroundColor: Colors.indigo[50],
    errorColor: Colors.red,
  );

  final InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    fillColor: Colors.white,
    filled: false,
    constraints: BoxConstraints(minWidth: 200, maxWidth: 400),
  );
}

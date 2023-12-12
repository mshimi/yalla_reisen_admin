import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/my_app.dart';


Future<void> main() async {
  WidgetsFlutterBinding();
  setPathUrlStrategy();

  await setup();


  runApp(MyApp());

  
}

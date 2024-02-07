import 'package:flutter/material.dart';
import 'package:weather_app/src/logic/view/city_manage.dart';
import 'package:weather_app/src/logic/view/setting_page.dart';
import 'package:weather_app/src/logic/view/weather_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherHome(),
      initialRoute: '/',
      routes: {
        '/home' : (context) => const WeatherHome(),
        '/citymanage' :(context) => const CityManagePage(),
        '/setting' :(context) => const SettingPage(),
      },
    );
  }
}
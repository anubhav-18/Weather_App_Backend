import 'package:flutter/material.dart';
import 'package:weather_app/src/logic/view/settings_view.dart';
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
        '/setting' :(context) => const SettingPage(),
      },
    );
  }
}
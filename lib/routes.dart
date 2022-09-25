import 'package:flutter/material.dart';
import 'package:meteo/screens/city/city_screen.dart';
import 'package:meteo/screens/home/home_scren.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  CityScreen.routeName: (context) => const CityScreen(),
};

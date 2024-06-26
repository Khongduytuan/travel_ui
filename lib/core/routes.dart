import 'package:flutter/material.dart';
import 'package:travel_ui/core/reprensentation/screens/hotel_screen.dart';
import 'package:travel_ui/core/reprensentation/screens/intro_screen.dart';
import 'package:travel_ui/core/reprensentation/screens/main_app.dart';
import 'package:travel_ui/core/reprensentation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  HotelScreen.routeName: (context) => const HotelScreen(),

};

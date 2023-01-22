import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => SplashScreen(),
      '/location': (context) => ChooseLocation()
    },
  ));
}



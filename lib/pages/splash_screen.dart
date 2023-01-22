import 'package:flutter/material.dart';
import 'package:world_time/service/world_time.dart';
import 'package:world_time/data/location_catalog.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String time = "Loading...";

  void setupTime () async {
    LocationCatalog locationCatalog = LocationCatalog.lookUp("Lagos");
    WorldTime worldTime = WorldTime(locationCatalog.city, locationCatalog.flag, locationCatalog.timezone);
    await worldTime.getTime();
    time = worldTime.time;
  }

  @override
  Widget build(BuildContext context) {
    setupTime();
    return Scaffold(
      body: SafeArea(child: Text(time)),
    );
  }
}

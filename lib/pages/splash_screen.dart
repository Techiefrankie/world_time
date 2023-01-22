import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/pages/home.dart';
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

    await Future.delayed(const Duration(seconds: 3), () async => {
      await worldTime.getTime()
    });

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(worldTime: worldTime),
        ));
  }

  @override
  Widget build(BuildContext context) {
    setupTime();
    return Scaffold(
      backgroundColor: Colors.amber[600],
      body: Center(
        child: SpinKitWanderingCubes(
          itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: index.isEven ? Colors.white : Colors.blue[800],
              ),
            );
          },
        ),
      ),
    );
  }
}

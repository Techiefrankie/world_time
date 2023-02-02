import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/service/world_time.dart';
import 'package:world_time/data/location_catalog.dart';

class Home extends StatefulWidget {
  final WorldTime worldTime;
  const Home({Key? key, required this.worldTime}) : super(key: key);

  @override
  State<Home> createState() => _HomeState(worldTime);
}

class _HomeState extends State<Home> {
  final WorldTime worldTime;

  _HomeState(this.worldTime);

  @override
  Widget build(BuildContext context) {
    // Determine background image and color
    String bgImage = worldTime.isDayTime ? "day.jpg" : "night.jpg";
    Color? bgColor = worldTime.isDayTime ? Colors.blue[200] : Colors.white10;
    Color? txtColor = worldTime.isDayTime ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea (
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/$bgImage"),
              fit: BoxFit.cover,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChooseLocation(locationCatalog: LocationCatalog.values),
                        ));
                  },
                  icon:  Icon(
                    Icons.edit_location,
                    color: txtColor,
                    size: 24.0,
                  ),
                  label: Text(
                      'Edit Location',
                    style: TextStyle(
                      color: txtColor
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(worldTime.location,
                      style: TextStyle(fontSize: 28.0, letterSpacing: 2.0, color: txtColor),
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(worldTime.time,
                  style: TextStyle(fontSize: 66.0, color: txtColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

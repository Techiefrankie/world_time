import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/service/world_time.dart';

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
                          builder: (context) => const ChooseLocation(),
                        ));
                  },
                  icon:  Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                    size: 24.0,
                  ),
                  label: Text(
                      'Edit Location',
                    style: TextStyle(
                      color: Colors.grey[300]
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(worldTime.location,
                      style: const TextStyle(fontSize: 28.0, letterSpacing: 2.0, color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(worldTime.time,
                  style: const TextStyle(fontSize: 66.0, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

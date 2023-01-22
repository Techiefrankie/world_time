import 'package:flutter/material.dart';
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
    print(worldTime.time);

    return Scaffold(
      body: SafeArea (
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,120.0,0,0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_pin,
                  size: 24.0,
                ),
                label: const Text('Edit Location'),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(worldTime.location,
                    style: const TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Text(worldTime.time,
                style: const TextStyle(fontSize: 66.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

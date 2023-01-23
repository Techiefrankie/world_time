import 'package:flutter/material.dart';
import 'package:world_time/data/location_catalog.dart';
import 'package:world_time/service/world_time.dart';

import 'home.dart';

class ChooseLocation extends StatefulWidget {
  final List<LocationCatalog> locationCatalog;

  const ChooseLocation({Key? key, required this.locationCatalog}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState(locationCatalog);
}

class _ChooseLocationState extends State<ChooseLocation> {
  final List<LocationCatalog> locationCatalog;

  _ChooseLocationState(this.locationCatalog);

  void updateTime(LocationCatalog locationCatalog) async {
    WorldTime worldTime = WorldTime(locationCatalog);
    await worldTime.getTime();

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(worldTime: worldTime),
        ));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locationCatalog.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(locationCatalog[index]);
                  },
                  title: Text(
                    locationCatalog[index].city
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(locationCatalog[index].flag),
                  ),
                ),
              ),
            );

      }),
    );
  }
}

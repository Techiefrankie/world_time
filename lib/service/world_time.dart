import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:world_time/model/world_time_response.dart';

import '../data/location_catalog.dart';


class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String timezone;
  bool isDayTime = false;
  LocationCatalog locationCatalog;


  WorldTime(this.locationCatalog) {
    location = locationCatalog.city;
    flag = locationCatalog.flag;
    timezone = locationCatalog.timezone;
  }

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$timezone'));
      WorldTimeResponse worldTimeResponse = WorldTimeResponse.fromJson(jsonDecode(response.body));

      DateTime datetime = DateTime.parse(worldTimeResponse.datetime);
      datetime = datetime.add(Duration(seconds: worldTimeResponse.rawOffset));

      // set the time and isDayTime parameters
      time = DateFormat.jm().format(datetime);
      isDayTime = datetime.hour > 6 && datetime.hour < 20 ? true : false;

    } catch(e) {
      print("Caught error $e");
      time = "Could not get time";
    }
  }
}
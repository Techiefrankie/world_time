import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:world_time/model/world_time_response.dart';


class WorldTime {
  String location;
  late String time;
  String flag;
  String timezone;


  WorldTime(this.location, this.flag, this.timezone);

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$timezone'));
      WorldTimeResponse worldTimeResponse = WorldTimeResponse.fromJson(jsonDecode(response.body));

      DateTime datetime = DateTime.parse(worldTimeResponse.datetime);
      datetime = datetime.add(Duration(seconds: worldTimeResponse.rawOffset));
      time = DateFormat.jm().format(datetime);

    } catch(e) {
      print("Caught error $e");
      time = "Could not get time";
    }
  }
}
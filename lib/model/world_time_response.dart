import 'package:json_annotation/json_annotation.dart';

part 'world_time_response.g.dart';

@JsonSerializable()
class WorldTimeResponse {
  @JsonKey(name: "abbreviation")
   String abbreviation;

  @JsonKey(name: "client_ip")
   String clientIp;

  @JsonKey(name: "datetime")
   String datetime;

  @JsonKey(name: "day_of_week")
   int dayOfWeek;

  @JsonKey(name: "day_of_year")
   int dayOfYear;

  @JsonKey(name: "dst")
   bool dst;

  @JsonKey(name: "dst_from")
   String? dstFrom;

  @JsonKey(name: "dst_offset")
   int dstOffset;

  @JsonKey(name: "dst_until")
   String? dstUntil;

  @JsonKey(name: "raw_offset")
   int rawOffset;

  @JsonKey(name: "timezone")
   String timezone;

  @JsonKey(name: "unixtime")
   int unixTime;

  @JsonKey(name: "utc_datetime")
   String utcDatetime;

  @JsonKey(name: "utc_offset")
   String utcOffset;

  @JsonKey(name: "week_number")
   int weekNumber;

  WorldTimeResponse(
      this.abbreviation,
      this.clientIp,
      this.datetime,
      this.dayOfWeek,
      this.dayOfYear,
      this.dst,
      this.dstFrom,
      this.dstOffset,
      this.dstUntil,
      this.rawOffset,
      this.timezone,
      this.unixTime,
      this.utcDatetime,
      this.utcOffset,
      this.weekNumber);

  factory WorldTimeResponse.fromJson(Map<String, dynamic> json) => _$WorldTimeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WorldTimeResponseToJson(this);
}
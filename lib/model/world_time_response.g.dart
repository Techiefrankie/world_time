// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'world_time_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldTimeResponse _$WorldTimeResponseFromJson(Map<String, dynamic> json) =>
    WorldTimeResponse(
      json['abbreviation'] as String,
      json['client_ip'] as String,
      json['datetime'] as String,
      json['day_of_week'] as int,
      json['day_of_year'] as int,
      json['dst'] as bool,
      json['dst_from'] as String?,
      json['dst_offset'] as int,
      json['dst_until'] as String?,
      json['raw_offset'] as int,
      json['timezone'] as String,
      json['unixtime'] as int,
      json['utc_datetime'] as String,
      json['utc_offset'] as String,
      json['week_number'] as int,
    );

Map<String, dynamic> _$WorldTimeResponseToJson(WorldTimeResponse instance) =>
    <String, dynamic>{
      'abbreviation': instance.abbreviation,
      'client_ip': instance.clientIp,
      'datetime': instance.datetime,
      'day_of_week': instance.dayOfWeek,
      'day_of_year': instance.dayOfYear,
      'dst': instance.dst,
      'dst_from': instance.dstFrom,
      'dst_offset': instance.dstOffset,
      'dst_until': instance.dstUntil,
      'raw_offset': instance.rawOffset,
      'timezone': instance.timezone,
      'unixtime': instance.unixTime,
      'utc_datetime': instance.utcDatetime,
      'utc_offset': instance.utcOffset,
      'week_number': instance.weekNumber,
    };

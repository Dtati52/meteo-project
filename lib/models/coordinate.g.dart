// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) => Coordinate(
      json['lat'] as double?,
      json['lon'] as double?,
      (json['dates'] as List<dynamic>?)
          ?.map((e) => Datet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoordinateToJson(Coordinate instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'dates': instance.dates,
    };

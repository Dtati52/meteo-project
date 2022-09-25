// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      json['parameter'] as String?,
      (json['coordinates'] as List<dynamic>?)
          ?.map((e) => Coordinate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'parameter': instance.parameter,
      'coordinates': instance.coordinates,
    };

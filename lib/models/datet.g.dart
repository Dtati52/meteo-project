// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datet _$DatetFromJson(Map<String, dynamic> json) => Datet(
      json['date'] == null ? null : DateTime.parse(json['date'] as String),
      (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DatetToJson(Datet instance) => <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'value': instance.value,
    };

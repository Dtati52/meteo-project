// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ville.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ville _$VilleFromJson(Map<String, dynamic> json) => Ville(
      json['id'] as int?,
      json['name'] as String?,
      json['pays'] as String?,
      json['latitude'] as String?,
      json['longitude'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$VilleToJson(Ville instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pays': instance.pays,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'image': instance.image,
    };

import 'package:json_annotation/json_annotation.dart';

part 'ville.g.dart';

@JsonSerializable()
class Ville {
  int? id;
  String? name;
  String? pays;
  String? latitude;
  String? longitude;
  String? image;

  Ville(
      this.id, this.name, this.pays, this.latitude, this.longitude, this.image);

  factory Ville.fromJson(Map<String, dynamic> json) => _$VilleFromJson(json);

  Map<String, dynamic> toJson() => _$VilleToJson(this);
}

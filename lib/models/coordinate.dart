import 'package:json_annotation/json_annotation.dart';
import 'package:meteo/models/datet.dart';
part 'coordinate.g.dart';

@JsonSerializable()
class Coordinate {
  double? lat;
  double? lon;
  List<Datet>? dates;

  Coordinate(this.lat, this.lon, this.dates);

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinateToJson(this);
}

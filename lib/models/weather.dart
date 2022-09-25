import 'package:json_annotation/json_annotation.dart';
import 'coordinate.dart';
part 'weather.g.dart';

@JsonSerializable()
class Weather {
  String? parameter;
  List<Coordinate>? coordinates;

  Weather(this.parameter, this.coordinates);

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

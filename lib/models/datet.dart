import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

import '../helper/customDatetime.dart';
part 'datet.g.dart';

@CustomDateTimeConverter()
@JsonSerializable()
class Datet {
  DateTime? date;
  double? value;

  Datet(this.date, this.value);

  factory Datet.fromJson(Map<String, dynamic> json) => _$DatetFromJson(json);

  Map<String, dynamic> toJson() => _$DatetToJson(this);
}

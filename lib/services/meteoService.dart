import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:meteo/helper/TimeDate.dart';

import '../constants.dart';
import '../models/weather.dart';

class MeteoService {
  final TimeDate timeDate = TimeDate();
  Future<List<Weather>> getWeather(
      DateTime dateTime, double lat, double lon) async {
    String username = 'suptech_destin';
    String password = 'y1Ck15dYOl';
    String basicAuth =
        'Basic ' + base64.encode(utf8.encode('$username:$password'));
    final isoDate = timeDate.convertIsoDate(dateTime) +
        "" +
        timeDate.convertIsoTime(dateTime);
    Response r = await get(
        Uri.parse('https://api.meteomatics.com/' +
            isoDate +
            '/t_2m:C/$lat,$lon/json'),
        headers: <String, String>{'authorization': basicAuth});
    print(r.body);
    var data = json.decode(r.body);
    List<Weather> weathers = [];
    data["data"].forEach((g) {
      weathers.add(Weather.fromJson(g));
    });
    //print(weathers);
    return weathers;
  }

  Future<List<Weather>> getWeatherS(
      DateTime dateTime, double lat, double lon) async {
    String username = 'suptech_destin';
    String password = 'y1Ck15dYOl';
    String basicAuth =
        'Basic ' + base64.encode(utf8.encode('$username:$password'));
    //print(dateTime);
    //  print(lon);
    //  print(lat);
    final moonLanding = DateTime.utc(dateTime.year, dateTime.month,
        dateTime.day, dateTime.hour, dateTime.minute, dateTime.second, 04);
    final isoDate = moonLanding.toIso8601String();
    print(isoDate);
    Response r = await get(
        Uri.parse('https://api.meteomatics.com/' +
            isoDate +
            '/t_2m:C/$lat,$lon/json'),
        headers: <String, String>{'authorization': basicAuth});
    print(r.body);
    var data = json.decode(r.body);
    List<Weather> weathers = [];
    data["data"].forEach((g) {
      weathers.add(Weather.fromJson(g));
    });
    //print(weathers);
    return weathers;
  }
}

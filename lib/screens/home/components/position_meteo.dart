import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:meteo/models/weather.dart';
import 'package:meteo/services/meteoService.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../SizeConfig.dart';
import '../../../services/Localisation.dart';

class PositionMeteo extends StatefulWidget {
  const PositionMeteo({
    Key? key,
  }) : super(key: key);

  @override
  State<PositionMeteo> createState() => _PositionMeteoState();
}

class _PositionMeteoState extends State<PositionMeteo> {
  String ville = "";
  final DateTime now = DateTime.now();
  List<Weather> weathers = [];
  MeteoService meteoService = MeteoService();

  @override
  initState() {
    print("Allooo " + now.toIso8601String());
    determinePosition().then((position) {
      getUserLocation(position.latitude, position.longitude);
    });
    super.initState();
  }

  getUserLocation(double latitude, double longitude) async {
    //call this async method from whereever you need
    weathers = await meteoService.getWeather(now, latitude, longitude);
    print(weathers);
    final coordinates = await placemarkFromCoordinates(latitude, longitude);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //print(latitude.toString() + " : " + longitude.toString());
    setState(() {
      var adress = coordinates;
      var rue = adress.first.street;
      ville = adress.first.locality!;
      var pays = adress.first.country;
      prefs.setString("Location", ville);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(getProportionateScreenWidth(20)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(20),
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(134, 106, 135, 230),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                ville,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: getProportionateScreenWidth(30)),
              ),
            ),
            Center(
              child: Text(
                weathers.isNotEmpty
                    ? weathers[0].coordinates![0].dates![0].value.toString()
                    : "Ma positon",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: getProportionateScreenWidth(40)),
              ),
            )
          ],
        ));
  }
}

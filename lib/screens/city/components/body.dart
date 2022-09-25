import 'package:flutter/material.dart';
import 'package:meteo/components/meteo_day.dart';
import 'package:meteo/components/meteo_prevent.dart';
import '../../../SizeConfig.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(40)),
            Center(
              child: Text(
                "Paris",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: getProportionateScreenWidth(45)),
              ),
            ),
            Center(
              child: Text(
                "25°",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: getProportionateScreenWidth(40)),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
            const MeteoDay(),
            const MeteoPrevent(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meteo/screens/home/components/ville_list.dart';
import '../../../SizeConfig.dart';
import 'position_meteo.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: const Text("Météo",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            const PositionMeteo(),
            Column(children: const [
              Text("D'autres villes",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left),
            ]),
            const VilleList(),
            SizedBox(height: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}

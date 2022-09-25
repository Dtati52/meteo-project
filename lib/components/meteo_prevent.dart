import 'package:flutter/material.dart';
import '../../../SizeConfig.dart';

class MeteoPrevent extends StatelessWidget {
  const MeteoPrevent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(getProportionateScreenWidth(20)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(10),
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(134, 106, 135, 230),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: getTextWidgets(4),
        ));
  }

  List<Widget> getTextWidgets(int size) {
    List<Widget> list = [];
    for (var i = 0; i < size; i++) {
      list.add(
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: const Text("Auj",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: const Icon(Icons.wind_power, color: Colors.grey),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: const Text("Min : 19°",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: const Text("Max : 25°",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            )),
      );
    }
    return list;
  }
}

import 'package:flutter/material.dart';
import '../../../SizeConfig.dart';

class MeteoDay extends StatelessWidget {
  const MeteoDay({
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
          children: [
            Row(
              children: getTextWidgets(5),
            )
          ],
        ));
  }

  List<Widget> getTextWidgets(int size) {
    List<Widget> list = [];
    for (var i = 0; i < size; i++) {
      list.add(
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(children: const [
            Text("Maint",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Icon(Icons.sunny, color: Colors.amber),
            SizedBox(height: 5),
            Text("25°",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ]),
        ),
      );
    }
    return list;
  }
}

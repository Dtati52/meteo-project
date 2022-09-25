import 'package:flutter/material.dart';

import 'components/body.dart';

class CityScreen extends StatelessWidget {
  static String routeName = "/city";

  const CityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}

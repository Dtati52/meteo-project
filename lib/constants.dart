import 'dart:convert';

import 'package:flutter/material.dart';
import 'SizeConfig.dart';

const kPrimaryColor = Color(0xFF3b5998);
const kPrimaryLightColor = Color(0xFFFFECDF);
var kPrimaryGradientColor = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);

const apiUrl = "https://api.meteomatics.com/";

// ignore: constant_identifier_names
const parameters = [
  "t_2m:C",
  "t_min_2m_24h:C",
  "t_max_2m_24h:C",
  "wind_speed_10m:ms",
  "wind_dir_10m:d"
];
String username = 'suptech_destin';
String password = 'y1Ck15dYOl';

String basicAuth = "Basic c3VwdGVjaF9kZXN0aW46eTFDazE1ZFlPbA==";

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final headingStyle1 = TextStyle(
  fontSize: getProportionateScreenWidth(24),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final headingStyle2 = TextStyle(
  fontSize: getProportionateScreenWidth(18),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

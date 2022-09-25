import 'package:flutter/material.dart';
import 'package:meteo/models/ville.dart';
import 'package:meteo/screens/city/city_screen.dart';

import '../SizeConfig.dart';
import '../constants.dart';

class CardVille extends StatelessWidget {
  const CardVille(
      {Key? key,
      this.width = 140,
      this.aspectRetio = 1.02,
      required this.ville})
      : super(key: key);

  final double width, aspectRetio;
  final Ville ville;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(width / 5.5)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            CityScreen.routeName,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Hero(
                      tag: ville.id.toString(), child: Image.asset(ville.image!)
                      //Image.network(product.images[0]),
                      ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  ville.name.toString(),
                  style: const TextStyle(color: Colors.black),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 2),
              Center(
                child: Text(ville.pays.toString(),
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center),
              ),

              // InkWell(
              //   borderRadius: BorderRadius.circular(50),
              //   onTap: () {},
              //   child: Container(
              //     padding: EdgeInsets.all(getProportionateScreenWidth(8)),
              //     height: getProportionateScreenWidth(28),
              //     width: getProportionateScreenWidth(28),
              //     decoration: BoxDecoration(
              //       color: product.isFavourite
              //           ? kPrimaryColor.withOpacity(0.15)
              //           : kSecondaryColor.withOpacity(0.1),
              //       shape: BoxShape.circle,
              //     ),
              //     child: SvgPicture.asset(
              //       "assets/icons/Heart Icon_2.svg",
              //       color: product.isFavourite
              //           ? Color(0xFFFF4848)
              //           : Color(0xFFDBDEE4),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

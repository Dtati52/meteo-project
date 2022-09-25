import 'package:flutter/material.dart';
import '../constants.dart';
import '../enums.dart';
import '../screens/home/home_scren.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.house,
                    color: MenuState.home == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor),
                onPressed: () =>
                    Navigator.popAndPushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: Icon(Icons.menu,
                    color: MenuState.historique == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor),
                onPressed: () =>
                    Navigator.popAndPushNamed(context, HomeScreen.routeName),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../components/CustomSearchDelegate .dart';
import '../../SizeConfig.dart';
import '../../components/bottom_navbar.dart';
import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search, color: Colors.black),
          )
        ],
      ),
      body: const Body(),
      bottomNavigationBar: const BottomNavbar(selectedMenu: MenuState.home),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meteo/models/ville.dart';

import '../../../SizeConfig.dart';
import '../../../components/CardVille.dart';
import '../../../constants.dart';

class VilleList extends StatefulWidget {
  const VilleList({Key? key}) : super(key: key);

  @override
  State<VilleList> createState() => _VilleListState();
}

class _VilleListState extends State<VilleList> {
  Future<List<Ville>>? villes;

  Future<List<Ville>> getVilles() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    List<Ville> ville_data = [];
    print(data["data"]);
    setState(() {
      data["data"].forEach((ville) {
        ville_data.add(Ville.fromJson(ville));
      });
    });
    return ville_data;
  }

  initialValue() async {
    villes = getVilles();
  }

  @override
  void initState() {
    // TODO: implement initState
    initialValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(30)),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: FutureBuilder(
                future: villes,
                builder: (context, AsyncSnapshot<List<Ville>> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [Text('Mauvaise connexion')],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    alignment: Alignment.center,
                                    onPressed: () {
                                      //_refreshData();
                                    },
                                    icon: const Icon(
                                      Icons.refresh_rounded,
                                      color: kPrimaryColor,
                                    ))
                              ],
                            )
                          ]);
                    case ConnectionState.waiting:
                      return Container(
                          margin: EdgeInsets.only(top: size.height / 5.5),
                          child: const CircularProgressIndicator(
                            color: kPrimaryColor,
                            strokeWidth: 2,
                          ));
                    case ConnectionState.active:
                      return const Text('');
                    case ConnectionState.done:
                      if (snapshot.hasError) {
                        return Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('Erreur de chargement des données')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        alignment: Alignment.center,
                                        onPressed: () {
                                          //_refreshData();
                                        },
                                        icon: const Icon(
                                          Icons.refresh_rounded,
                                          color: kPrimaryColor,
                                        ))
                                  ],
                                )
                              ],
                            ));
                      } else {
                        return Row(
                          children: [
                            ...List.generate(
                              snapshot.data!.length,
                              (index) {
                                return CardVille(ville: snapshot.data![index]);
                              },
                            ),
                            SizedBox(width: getProportionateScreenWidth(20)),
                          ],
                        );
                      }
                  }
                }))
      ],
    );
  }
}

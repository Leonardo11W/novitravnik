import 'package:flutter/material.dart';
import 'package:novi_travnik/pocetna.dart';
import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/prijevoz/prijevoz.dart';
import 'package:novi_travnik/prijevoz/raspored/travniknedelja.dart';
import 'package:novi_travnik/prijevoz/raspored/travnikneradni.dart';

import 'package:novi_travnik/prijevoz/raspored/travnikradni.dart';
import 'package:novi_travnik/prijevoz/raspored/viteznedjelja.dart';
import 'package:novi_travnik/prijevoz/raspored/vitezradni.dart';
import 'package:novi_travnik/prijevoz/raspored/vitezsubota.dart';
import 'package:novi_travnik/search.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/bajra.dart';

void main() => runApp(const Raspored());

class Raspored extends StatelessWidget {
  const Raspored({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text((BHS == true)
                  ? "Raspored"
                  : (English == true)
                      ? "Schedule"
                      : "Zeitlicher Ablauf")),
          backgroundColor: (Click == false) ? Colors.black : Colors.blue,
        ),
        body: const MyStatefulWidget(),
        bottomNavigationBar: BottomAppBar(
          color: (Click == false) ? Colors.black : Colors.blue,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  tooltip: (BHS == true)
                      ? 'Nazad'
                      : (English == true)
                          ? "Back"
                          : "Geh Zurück",
                  icon:
                      ImageIcon(AssetImage('assets/logos/left-arrow (1).png')),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  tooltip: 'Pretraga',
                  icon: ImageIcon(AssetImage('assets/logos/loupe.png')),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ExpansionTile(
            iconColor: (Click == false) ? Colors.white : Colors.black,
            title: Text(
              'Travnik',
              style: TextStyle(
                  color: (Click == false) ? Colors.white : Colors.black),
            ),
            children: <Widget>[
              ListTile(
                  title: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Travnikradni()));
                      },
                      child: Text(
                          (BHS == true)
                              ? "Radni dan"
                              : (English == true)
                                  ? "Work day"
                                  : "Arbeitstag",
                          style: TextStyle(
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black)))),
              ListTile(
                  title: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Travnikneradnisubota()));
                      },
                      child: Text(
                          (BHS == true)
                              ? "Subota"
                              : (English == true)
                                  ? 'Saturday'
                                  : 'Samstag',
                          style: TextStyle(
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black)))),
              ListTile(
                  title: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Travnikneradninedjelja()));
                      },
                      child: Text(
                          (BHS == true)
                              ? "Nedjelja"
                              : (English == true)
                                  ? 'Sunday'
                                  : 'Sonntag',
                          style: TextStyle(
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black)))),
            ],
          ),
          ExpansionTile(
            iconColor: (Click == false) ? Colors.white : Colors.black,
            title: Text('Vitez',
                style: TextStyle(
                    color: (Click == false) ? Colors.white : Colors.black)),
            children: <Widget>[
              ListTile(
                  title: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Vitezradni()));
                      },
                      child: Text(
                          (BHS == true)
                              ? "Radni dan"
                              : (English == true)
                                  ? "Work day"
                                  : "Arbeitstag",
                          style: TextStyle(
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black)))),
              ListTile(
                  title: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Vitezsubota()));
                      },
                      child: Text(
                          (BHS == true)
                              ? "Subota"
                              : (English == true)
                                  ? 'Saturday'
                                  : 'Samstag',
                          style: TextStyle(
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black)))),
              ListTile(
                  title: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Viteznedjelja()));
                      },
                      child: Text(
                          (BHS == true)
                              ? "Nedjelja"
                              : (English == true)
                                  ? 'Sunday'
                                  : 'Sonntag',
                          style: TextStyle(
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black)))),
            ],
          ),
        ],
      ),
      backgroundColor: (Click == false) ? Colors.black : Colors.white,
    );
  }
}

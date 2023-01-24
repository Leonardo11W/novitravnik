import 'package:flutter/material.dart';

import 'package:novi_travnik/kategorije.dart';
import 'package:novi_travnik/ostalo/ostalo.dart';
import 'package:novi_travnik/ostalo/sport/klubovi/klubovi.dart';
import 'package:novi_travnik/ostalo/sport/teretane/teretane.dart';
import 'package:novi_travnik/pocetna.dart';
import 'package:novi_travnik/postavke.dart';

import 'package:novi_travnik/vijesti/drukciji.dart';
import 'package:novi_travnik/vijesti/notra.dart';

class Sport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Sport'),
        backgroundColor: (Click == false) ? Colors.black : Colors.blue,
      ),
      body: Kartice(),
      bottomNavigationBar: _KategorijeAppBar(),
    );
  }
}

class _KategorijeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
              icon: ImageIcon(AssetImage('assets/logos/left-arrow (1).png')),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              tooltip: (BHS == true)
                  ? 'Pretraga'
                  : (English == true)
                      ? "Search"
                      : "Suche",
              icon: ImageIcon(AssetImage('assets/logos/loupe.png')),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              tooltip: (BHS == true)
                  ? 'Mapa'
                  : (English)
                      ? "Map"
                      : "Karte",
              icon: ImageIcon(AssetImage('assets/logos/pin.png')),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pocetna()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Kartice extends StatefulWidget {
  const Kartice({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Kartice> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        // ignore: unnecessary_new
        home: new Scaffold(
          backgroundColor: (Click == false) ? Colors.black : Colors.white,
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(
                // ignore: sort_child_properties_last
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Klubovi()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          AspectRatio(
                            aspectRatio: 4.0 / 1.0,
                            child: Image.asset('assets/logos/sports.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            (BHS == true)
                                ? "Klubovi"
                                : (English == true)
                                    ? "Clubs"
                                    : "Vereine",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Teretane()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          AspectRatio(
                            aspectRatio: 4.0 / 1.0,
                            child: Image.asset('assets/logos/gym.png'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            (BHS == true)
                                ? "Teretane"
                                : (English == true)
                                    ? "Gyms"
                                    : "Turnhallen",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.5 / 1.0),
              ),
            ),
          ),
        ));
  }
}

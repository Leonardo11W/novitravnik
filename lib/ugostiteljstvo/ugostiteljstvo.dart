import 'package:flutter/material.dart';
import 'package:novi_travnik/kategorije.dart';
import 'package:novi_travnik/pocetna.dart';
import 'package:novi_travnik/postavke.dart';

import 'package:novi_travnik/ugostiteljstvo/kafici/kafici.dart';

import 'package:novi_travnik/ugostiteljstvo/lounge/lounge.dart';

import 'package:novi_travnik/ugostiteljstvo/restorani/hrana.dart';
import 'package:novi_travnik/ugostiteljstvo/slasticarne.dart';

class Ugostiteljstvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          (BHS == true)
              ? 'Ugostiteljski Objekti'
              : (English)
                  ? "Restaurants"
                  : "Restaurants",
        ),
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
              icon: ImageIcon(AssetImage('assets/logos/settings.png')),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Postavke()));
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
  Future<bool> _exit() async {
    return (await Navigator.push(
            context, MaterialPageRoute(builder: (context) => Pocetna()))) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return MaterialApp(
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
                          MaterialPageRoute(builder: (context) => Kafici()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literRals_to_create_immutables
                        children: [
                          AspectRatio(
                            aspectRatio: 5.0 / 1.0,
                            child: Image.asset('assets/logos/coffee.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Kafići'
                                : (English)
                                    ? "Cafes"
                                    : "Karte",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hrana()));
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
                            aspectRatio: 5.0 / 1.0,
                            child: Image.asset('assets/logos/restaurant.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Hrana'
                                : (English)
                                    ? "Food"
                                    : "Gamma",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Slasticarne()));
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
                            aspectRatio: 5.0 / 1.0,
                            child: Image.asset('assets/logos/cake-slice.png'),
                          ),
                          // ignore: prefer_const_constructors
                          Text(
                            (BHS == true)
                                ? 'Slastičarne'
                                : (English)
                                    ? "confectionery"
                                    : "Süßwaren",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Lounge()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore
                        children: [
                          // ignore: prefer_const_constructors
                          AspectRatio(
                            aspectRatio: 5.4 / 1.0,
                            child: Image.asset('assets/logos/martini.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Lounge'
                                : (English)
                                    ? "Lounge"
                                    : "Lounge",
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
                    childAspectRatio: 3.0 / 1.0),
              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:novi_travnik/pocetna.dart';
import 'package:novi_travnik/kategorije.dart';

import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/prodavnice/kioske/kiosci.dart';
import 'package:novi_travnik/prodavnice/ljekarne/ljekarne.dart';
import 'package:novi_travnik/prodavnice/ostalo/ostaloprodavnice.dart';
import 'package:novi_travnik/prodavnice/pekare/pekare.dart';
import 'package:novi_travnik/prodavnice/samoposluga/samoposluga.dart';
import 'package:novi_travnik/search.dart';

class Prodavnice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text((BHS == true)
            ? "Prodavnice"
            : (English == true)
                ? "Shops"
                : "Geschäfte"),
        backgroundColor: (Click == false) ? Colors.black : Colors.blue,
      ),
      body: Kartice(),
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
    return MaterialApp(
        theme: ThemeData(),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Samoposluga()));
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
                            aspectRatio: 6.0 / 1.0,
                            child: Image.asset('assets/logos/shops.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? "Samoposluga"
                                : (English == true)
                                    ? "Market"
                                    : "Markt",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pekare()));
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
                            aspectRatio: 6.0 / 1.0,
                            child: Image.asset('assets/logos/bread.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? "Pekare"
                                : (English == true)
                                    ? "Bakeries"
                                    : "Bäckereien",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ljekarne()));
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
                            aspectRatio: 6.0 / 1.0,
                            child: Image.asset('assets/logos/medicine.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? "Apoteke"
                                : (English == true)
                                    ? "Pharmacies"
                                    : "Apotheken",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kiosci()));
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
                            aspectRatio: 6.0 / 1.0,
                            child: Image.asset('assets/logos/kiosk.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? "Kioske"
                                : (English == true)
                                    ? "Kiosks"
                                    : "Kiosks",
                            style: TextStyle(fontSize: 26, color: Colors.white),
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
                              builder: (context) => OstaloProdavnice()));
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
                            aspectRatio: 6.0 / 1.0,
                            child: Image.asset('assets/logos/more.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? "Ostalo"
                                : (English == true)
                                    ? "Flower Shops"
                                    : "Blumenläden",
                            style: TextStyle(fontSize: 26, color: Colors.white),
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
                    childAspectRatio: 5.0 / 1.5),
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: (Click == false) ? Colors.black : Colors.blue,
            child: IconTheme(
              data:
                  IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
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
                    icon: ImageIcon(
                        AssetImage('assets/logos/left-arrow (1).png')),
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search()));
                    },
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
          ),
        ));
    // ignore: unnecessary_new
  }
}

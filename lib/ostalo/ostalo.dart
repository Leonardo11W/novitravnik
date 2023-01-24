import 'package:flutter/material.dart';
import 'package:novi_travnik/ostalo/banke/banke.dart';
import 'package:novi_travnik/ostalo/dentali/dentali.dart';
import 'package:novi_travnik/ostalo/pumpe/pumpe.dart';
import 'package:novi_travnik/ostalo/saloni/saloni.dart';
import 'package:novi_travnik/ostalo/sport/sport.dart';
import 'package:novi_travnik/ostalo/uredbe/uredbe.dart';
import 'package:novi_travnik/pocetna.dart';
import 'package:novi_travnik/kategorije.dart';

import 'package:novi_travnik/postavke.dart';

class Ostalo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          (BHS == true)
              ? "Ostalo"
              : (English == true)
                  ? "Other"
                  : "Sonstiges",
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
                          MaterialPageRoute(builder: (context) => Banke()));
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
                            aspectRatio: 24.0 / 11.0,
                            child: Image.asset('assets/logos/bank (1).png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Banke'
                                : (English)
                                    ? "Banks"
                                    : "Banken",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dentali()));
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
                            aspectRatio: 24.0 / 11.0,
                            child: Image.asset('assets/logos/dental.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Dentali'
                                : (English)
                                    ? "Dentals"
                                    : "Zahnmedizin",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: (Deutsch == true) ? 20 : 26),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pumpe()));
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
                            aspectRatio: 24.0 / 11.0,
                            child: Image.asset('assets/logos/gas-pump.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Pumpe'
                                : (English)
                                    ? "Pumps"
                                    : "Pumpens",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Saloni()));
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
                            aspectRatio: 24.0 / 11.0,
                            child: Image.asset('assets/logos/barber-chair.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Saloni'
                                : (English)
                                    ? "Salons"
                                    : "Salons",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sport()));
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
                            aspectRatio: 24.0 / 11.0,
                            child: Image.asset('assets/logos/sport.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Sport'
                                : (English)
                                    ? "Sport"
                                    : "Sport",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Uredbe()));
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
                            aspectRatio: 24.0 / 11.0,
                            child: Image.asset('assets/logos/office.png'),
                          ),
                          Text(
                            (BHS == true)
                                ? 'Ustanove'
                                : (English)
                                    ? "Institution"
                                    : "Institution",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.0 / 1.0),
              ),
            ),
          ),
        ));
  }
}

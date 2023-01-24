import 'package:novi_travnik/kategorije.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:novi_travnik/main.dart';
import 'package:novi_travnik/mapa.dart';
import 'package:novi_travnik/ostalo/ostalo.dart';
import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/prijevoz/prijevoz.dart';
import 'package:novi_travnik/prodavnice/prodavnice.dart';
import 'package:novi_travnik/search.dart';
import 'package:novi_travnik/ugostiteljstvo/ugostiteljstvo.dart';
import 'package:novi_travnik/vijesti/vijesti.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: use_key_in_widget_constructors
class Pocetna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      title: 'Novi Travnik',
      home: MapSample(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.

        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pocetna': (context) => Pocetna(),
        '/postavke': (context) => Postavke(),
      },
    );
  }
}

// ignore: use_key_in_widget_constructors
class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

//GOOGLE MAPA

class MapSampleState extends State<MapSample> {
  void initState() {
    _loadData();
    super.initState();
  }

  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      Click = prefs.getBool("Click")!;
      BHS = prefs.getBool('BHS')!;
      English = prefs.getBool('English')!;
      Deutsch = prefs.getBool('Deutsch')!;
      iconBool = prefs.getBool('iconBool')!;
    });
  }

  // ignore: prefer_const_constructors
  static final CameraPosition _kGooglePlex = CameraPosition(
    // ignore: prefer_const_constructors
    target: LatLng(44.1748006, 17.6631094),
    zoom: 17,
  );
  MapType _currentMapType = MapType.normal;

  void changeMapType() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Future<bool> _onWillPopExit() async {
      isviewed = 1;
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: (Click == false) ? Colors.black : Colors.blue,
              title: new Text(
                (BHS == true)
                    ? "Jeste li sigurni?"
                    : (English == true)
                        ? 'Are you sure?'
                        : 'Bist du dir sicher?',
                style: TextStyle(color: Colors.white),
              ),
              content: new Text(
                (BHS == true)
                    ? "Želite li izaći iz aplikacije"
                    : (English == true)
                        ? 'Do you want to exit the App'
                        : 'Möchten Sie eine App beenden',
                style: TextStyle(color: Colors.white),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(false), //<-- SEE HERE
                  child: new Text(
                    (BHS == true)
                        ? "Ne"
                        : (English == true)
                            ? 'No'
                            : 'Nein',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(true), // <-- SEE HERE
                  child: new Text(
                    (BHS == true)
                        ? "Da"
                        : (English == true)
                            ? 'Yes'
                            : 'Ja',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )) ??
          false;
    }

    return WillPopScope(
      onWillPop: () async => _onWillPopExit(),
      // ignore: sort_child_properties_last, unnecessary_new
      child: new Scaffold(
        backgroundColor: (Click == false) ? Colors.black : Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Novi Travnik',
          ),
          centerTitle: true,
          backgroundColor: (Click == false) ? Colors.black : Colors.blue,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(
              // ignore: sort_child_properties_last
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Prodavnice()));
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
                          aspectRatio: 5.3 / 1.0,
                          child:
                              Image.asset('assets/logos/online-shopping.png'),
                        ),
                        Text(
                          (BHS == true)
                              ? "Prodavnice"
                              : (English == true)
                                  ? "Shops"
                                  : "Geschäfte",
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Vijesti()));
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
                          aspectRatio: 5.2 / 1.0,
                          child: Image.asset('assets/logos/newspaper.png'),
                        ),
                        Text(
                          (BHS == true)
                              ? "Vijesti"
                              : (English == true)
                                  ? "News"
                                  : "Nachrichten",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Prijevoz()));
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
                          aspectRatio: 5.7 / 1.0,
                          child: Image.asset('assets/logos/bus.png'),
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          (BHS == true)
                              ? "Prijevoz"
                              : (English == true)
                                  ? "Transport"
                                  : "Transport",
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
                            builder: (context) => Ugostiteljstvo()));
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
                          aspectRatio: 5.5 / 1.0,
                          child: Image.asset('assets/logos/restaurant.png'),
                        ),
                        Text(
                          (BHS == true)
                              ? "Ugostiteljski objekti"
                              : (English == true)
                                  ? "Restaurant"
                                  : "Restaurant",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ostalo()));
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
                          child: Image.asset('assets/logos/more.png'),
                        ),
                        Text(
                          (BHS == true)
                              ? "Ostalo"
                              : (English == true)
                                  ? "Other"
                                  : "Sonstiges",
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
                  childAspectRatio: (width < 700)
                      ? MediaQuery.of(context).size.height * 0.004
                      : MediaQuery.of(context).size.height * 0.003),
            ),
          ),
        ),

        /*  Scaffold(
            body: Center(
              child: Text('$width'),
            ),
          ),*/
        bottomNavigationBar: BottomAppBar(
          color: (Click == false) ? Colors.black : Colors.blue,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  tooltip: (BHS == true) ? 'Navigacija' : "Navigation",
                  icon: Icon(Icons.map),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mapa()));
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
                      ? 'Postavke'
                      : (English)
                          ? "Settings"
                          : "Einstellungen",
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
      ),
    );

    // ignore: unnecessary_new
  }
}

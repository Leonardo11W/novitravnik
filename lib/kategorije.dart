// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart';
import 'package:novi_travnik/main.dart';
import 'package:novi_travnik/ostalo/ostalo.dart';
import 'package:novi_travnik/pocetna.dart';
import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/prijevoz/prijevoz.dart';
import 'package:novi_travnik/prodavnice/prodavnice.dart';
import 'package:novi_travnik/search.dart';
import 'package:novi_travnik/ugostiteljstvo/ugostiteljstvo.dart';
import 'package:novi_travnik/vijesti/vijesti.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mapa.dart';

class Mapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapSample(),
    );
  }
}

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

    return Scaffold(
      backgroundColor: (Click == false) ? Colors.black : Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          (BHS == true)
              ? 'Mapa'
              : (English == true)
                  ? 'Map'
                  : "Karte",
        ),
        centerTitle: true,
        backgroundColor: (Click == false) ? Colors.black : Colors.blue,
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              controller.setMapStyle(Utils.mapStyles);
            },
            mapType: _currentMapType,
            initialCameraPosition: _kGooglePlex,
            zoomControlsEnabled: false,
            rotateGesturesEnabled: true,
            myLocationEnabled: true,
            buildingsEnabled: true,
            scrollGesturesEnabled: true,
            zoomGesturesEnabled: true,
            myLocationButtonEnabled: false,
          ),
          Container(
            padding: const EdgeInsets.only(top: 24, right: 12),
            alignment: Alignment.topRight,
            child: Column(
              children: <Widget>[
                FloatingActionButton(
                  onPressed: changeMapType,
                  backgroundColor:
                      (Click == false) ? Colors.black : Colors.blue,
                  child: const Icon(Icons.map, size: 30.0),
                ),
              ],
            ),
          ),
        ],
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
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pocetna()));
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
    );

    // ignore: unnecessary_new
  }
}

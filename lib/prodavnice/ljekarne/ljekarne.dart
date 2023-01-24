import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/prodavnice/ljekarne/ljekarnedata.dart';

import 'package:novi_travnik/prodavnice/prodavnice.dart';

import 'package:novi_travnik/search.dart';

class Ljekarne extends StatefulWidget {
  const Ljekarne({Key? key}) : super(key: key);

  @override
  _LjekarneState createState() => _LjekarneState();
}

class _LjekarneState extends State<Ljekarne> {
  Position? _currentUserPosition;
  double? distanceImMeter = 0.0;
  LjekarneData data = LjekarneData();
  Future _getTheDistance() async {
    _currentUserPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    for (int i = 0; i < data.ljekarnice.length; i++) {
      double storelat = data.ljekarnice[i]['lat'];
      double storelng = data.ljekarnice[i]['lng'];

      distanceImMeter = await Geolocator.distanceBetween(
        _currentUserPosition!.latitude,
        _currentUserPosition!.longitude,
        storelat,
        storelng,
      );
      var distance = distanceImMeter?.round().toInt();

      data.ljekarnice[i]['distance'] = (distance!);
      setState(() {});
    }
  }

  @override
  void initState() {
    _getTheDistance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: (Click == false) ? Colors.black : Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: (Click == false) ? Colors.black : Colors.blue,
        title: Text(
          (BHS == true)
              ? "Apoteke"
              : (English == true)
                  ? "Pharmacies"
                  : "Apotheken",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: GridView.builder(
            itemCount: data.ljekarnice.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.height * 0.3,
              childAspectRatio: 1 / 0.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  data.ljekarnice[index]['navigation']));
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: Colors.blue,
                    ),
                    height: height * 0.9,
                    width: width * 0.3,
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.1,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: data.ljekarnice[index]['image'],
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          data.ljekarnice[index]['name'],
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            Text(
                              (BHS == true)
                                  ? "${data.ljekarnice[index]['distance'].round()} m udaljeno"
                                  : (English == true)
                                      ? "${data.ljekarnice[index]['distance'].round()} m away"
                                      : "${data.ljekarnice[index]['distance'].round()} m weg",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ));
            }),
      ),
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
    );
  }
}

import 'package:custom_info_window/custom_info_window.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:novi_travnik/mapa.dart';

import 'package:novi_travnik/postavke.dart';

import 'package:novi_travnik/prodavnice/samoposluga/samoposluga.dart';
import 'package:novi_travnik/prodavnice/samoposluga/samoposlugaposebno.dart';
import 'package:novi_travnik/search.dart';

import 'package:geolocator/geolocator.dart';

import 'package:cached_network_image/cached_network_image.dart';

class Best1 extends StatefulWidget {
  const Best1({Key? key}) : super(key: key);

  @override
  _Best1State createState() => _Best1State();
}

class _Best1State extends State<Best1> {
  Position? _currentUserPosition;
  double? distanceImMeter = 0.0;
  Best1Data data = Best1Data();
  Future _getTheDistance() async {
    _currentUserPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    for (int i = 0; i < data.bestici.length; i++) {
      double storelat = data.bestici[i]['lat'];
      double storelng = data.bestici[i]['lng'];

      distanceImMeter = await Geolocator.distanceBetween(
        _currentUserPosition!.latitude,
        _currentUserPosition!.longitude,
        storelat,
        storelng,
      );
      var distance = distanceImMeter?.round().toInt();

      data.bestici[i]['distance'] = (distance!);
      setState(() {});
    }
  }

  @override
  void initState() {
    _getTheDistance();
    super.initState();
    loadData();
  }

  CustomInfoWindowController __customInfoWindowController =
      CustomInfoWindowController();
  MapType _currentMapType = MapType.normal;
  void changeMapType() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  final List<Marker> _markers = <Marker>[];
  final List<LatLng> _latLang = [
    LatLng(
      44.17121949992397,
      17.661072349461318,
    ),
  ];

  loadData() {
    for (int i = 0; i < _latLang.length; i++)
      // ignore: curly_braces_in_flow_control_structures
      if (i - i == 1) {
        _markers.add(
          Marker(
            markerId: MarkerId(i.toString()),
          ),
        );
      } else {
        _markers.add(
          Marker(
              markerId: MarkerId(i.toString()),
              icon: BitmapDescriptor.defaultMarker,
              position: _latLang[i],
              onTap: () {
                __customInfoWindowController.addInfoWindow!(
                    Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          color: (Click == false)
                              ? Colors.black.withOpacity(0.8)
                              : Colors.white.withOpacity(0.8),
                          border: Border.all(
                            color:
                                (Click == false) ? Colors.black : Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                'https://photos.novitravnik.online/samoposluga/samoposluga.jpg',
                            imageBuilder: (context, imageProvider) => Container(
                                width: 300,
                                height: 150,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://photos.novitravnik.online/samoposluga/samoposluga.jpg'),
                                      fit: BoxFit.fitWidth,
                                      filterQuality: FilterQuality.high),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(40.0),
                                      topLeft: Radius.circular(40.0)),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Best",
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  softWrap: false,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: (Click == false)
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                Text(
                                  (BHS == true)
                                      ? "${data.bestici[0]['distance'].round()} m udaljeno"
                                      : (English == true)
                                          ? "${data.bestici[0]['distance'].round()} m away"
                                          : "${data.bestici[0]['distance'].round()} m weg",
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  softWrap: false,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: (Click == false)
                                          ? Colors.white
                                          : Colors.black),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  tooltip: (BHS == true)
                                      ? 'Radno vrijeme'
                                      : (English == true)
                                          ? "Working hours"
                                          : "Arbeitszeit",
                                  icon: ImageIcon(
                                      AssetImage('assets/logos/clock (1).png')),
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black,
                                  onPressed: () {},
                                ),
                                Text(
                                  (BHS == true)
                                      ? 'Radno vrijeme: 7/21'
                                      : (English == true)
                                          ? "Working hours: 7/21"
                                          : "Arbeitszeit: 7/21",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: (Click == false)
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 10),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    tooltip: (BHS == true)
                                        ? 'Adresa'
                                        : (English == true)
                                            ? "Address"
                                            : "die Anschrift",
                                    icon: ImageIcon(
                                        AssetImage('assets/logos/pin.png')),
                                    color: (Click == false)
                                        ? Colors.white
                                        : Colors.black,
                                    onPressed: () {},
                                  ),
                                  Text(
                                    (BHS == true)
                                        ? 'Adresa: Kralja Tvrtka 40'
                                        : (English == true)
                                            ? "Address: Kralja Tvrtka 40"
                                            : "die Anschrift: Kralja Tvrtka 40",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: (Click == false)
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    _latLang[i]);
              }),
        );
      }
    // ignore: curly_braces_in_flow_control_structures

    setState(() {});
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
        title: Text("Best"),
      ),
      body: Stack(
        children: [
          GoogleMap(
              mapToolbarEnabled: false,
              zoomControlsEnabled: false,
              rotateGesturesEnabled: true,
              myLocationEnabled: true,
              buildingsEnabled: true,
              scrollGesturesEnabled: true,
              zoomGesturesEnabled: true,
              myLocationButtonEnabled: false,
              mapType: _currentMapType,
              initialCameraPosition: CameraPosition(
                  target: LatLng(_currentUserPosition!.latitude,
                      _currentUserPosition!.longitude),
                  zoom: 15),
              markers: Set<Marker>.of(_markers),
              onTap: (positition) {
                __customInfoWindowController.hideInfoWindow!();
              },
              onCameraMove: (position) {
                __customInfoWindowController.onCameraMove!();
              },
              onMapCreated: (GoogleMapController controller) {
                __customInfoWindowController.googleMapController = controller;
                controller.setMapStyle(Utils.mapStyles);
              }),
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
          CustomInfoWindow(
            controller: __customInfoWindowController,
            height: 300,
            width: 300,
            offset: 35,
          )
        ],
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

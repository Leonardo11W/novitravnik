import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:novi_travnik/mapa.dart';
import 'package:novi_travnik/ostalo/uredbe/uredbe.dart';
import 'package:novi_travnik/ostalo/uredbe/uredbespecial.dart';
import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/search.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class Aviva extends StatefulWidget {
  const Aviva({Key? key}) : super(key: key);

  @override
  _HteronetState createState() => _HteronetState();
}

class _HteronetState extends State<Aviva> {
  Position? _currentUserPosition;
  double? distanceImMeter = 0.0;
  HteronetData data = HteronetData();
  Future _getTheDistance() async {
    _currentUserPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    for (int i = 0; i < data.aurorici.length; i++) {
      double storelat = data.aurorici[i]['lat'];
      double storelng = data.aurorici[i]['lng'];

      distanceImMeter = await Geolocator.distanceBetween(
        _currentUserPosition!.latitude,
        _currentUserPosition!.longitude,
        storelat,
        storelng,
      );
      var distance = distanceImMeter?.round().toInt();

      data.aurorici[i]['distance'] = (distance!);
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
    LatLng(44.17878014707873, 17.667114820883434),
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
                                'https://photos.novitravnik.online/more/aviva.png',
                            imageBuilder: (context, imageProvider) => Container(
                                width: 300,
                                height: 150,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://photos.novitravnik.online/more/aviva.png'),
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
                                  "Aviva",
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
                                      ? "${data.aurorici[0]['distance'].round()} m udaljeno"
                                      : (English == true)
                                          ? "${data.aurorici[0]['distance'].round()} m udaljeno"
                                          : "${data.aurorici[0]['distance'].round()} m weg",
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
                                      ? 'Radno vrijeme: 20/5'
                                      : (English == true)
                                          ? "Working hours: 20/5"
                                          : "Arbeitszeit: 20/5",
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
                                        ? 'Adresa: Stjepana Tomaševića '
                                        : (English == true)
                                            ? "Address: Stjepana Tomaševića "
                                            : "die Anschrift: Stjepana Tomaševića ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: (Click == false)
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 10),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    tooltip: (BHS == true)
                                        ? 'Broj Telefona'
                                        : (English == true)
                                            ? "Phone Number"
                                            : "Telefonnummer",
                                    icon: ImageIcon(AssetImage(
                                        'assets/logos/telephone.png')),
                                    color: (Click == false)
                                        ? Colors.white
                                        : Colors.black,
                                    onPressed: () {},
                                  ),
                                  RichText(
                                    text: new TextSpan(
                                        text: '063 373 777',
                                        style: TextStyle(
                                            color: (Click == false)
                                                ? Colors.white
                                                : Colors.black),
                                        recognizer: new TapGestureRecognizer()
                                          ..onTap = () async {
                                            launch("tel://063373777");
                                          }),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 10),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    tooltip: (BHS == true)
                                        ? 'Stranica'
                                        : (English == true)
                                            ? "Website"
                                            : "Buchseite",
                                    icon: ImageIcon(
                                        AssetImage('assets/logos/website.png')),
                                    color: (Click == false)
                                        ? Colors.white
                                        : Colors.black,
                                    onPressed: () {},
                                  ),
                                  RichText(
                                      text: new TextSpan(
                                          text: 'tdizel.com',
                                          style: TextStyle(
                                              color: (Click == false)
                                                  ? Colors.white
                                                  : Colors.black),
                                          recognizer: new TapGestureRecognizer()
                                            ..onTap = () async {
                                              launch('http://www.tdizel.com/');
                                            }))
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
        title: Text("Aviva"),
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
            height: 400,
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

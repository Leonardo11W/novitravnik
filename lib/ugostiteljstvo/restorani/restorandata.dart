import 'package:novi_travnik/ugostiteljstvo/restorani/agave.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/buco.dart';

import 'package:novi_travnik/ugostiteljstvo/restorani/milano.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/oskar.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/pivnica.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/venezia.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/zeko.dart';

class RestoranData {
  List restorani = [
    {
      "name": "Agave",
      "image": 'https://photos.novitravnik.online/restoran/agave.png',
      "lat": 44.175621065342725,
      "lng": 17.66382321408379,
      "distance": 0,
      "navigation": Agave()
    },
    {
      "name": "Milano",
      "image": 'https://photos.novitravnik.online/restoran/milano.png',
      "lat": 44.17478830845236,
      "lng": 17.66341628530757,
      "distance": 0,
      "navigation": Milano()
    },
    {
      "name": "Oskar",
      "image": 'https://photos.novitravnik.online/jos/oskar.png',
      "lat": 44.179385955884705,
      "lng": 17.66955010737737,
      "distance": 0,
      "navigation": Oskar()
    },
    {
      "name": "Pivnica",
      "image": 'https://photos.novitravnik.online/restoran/pivnica.png',
      "lat": 44.173392009824056,
      "lng": 17.66366273687054,
      "distance": 0,
      "navigation": Pivnica()
    },
    {
      "name": "Venezia",
      "image": 'https://photos.novitravnik.online/restoran/venezia.png',
      "lat": 44.17427771005521,
      "lng": 17.663444627639215,
      "distance": 0,
      "navigation": Venezia()
    },
    {
      "name": "Zeko",
      "image": 'https://photos.novitravnik.online/restoran/zeko.png',
      "lat": 44.168638668197296,
      "lng": 17.64733618086392,
      "distance": 0,
      "navigation": Zeko()
    },
  ];
}

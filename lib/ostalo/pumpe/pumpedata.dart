import 'package:novi_travnik/ostalo/pumpe/eurotank.dart';
import 'package:novi_travnik/ostalo/pumpe/gric.dart';
import 'package:novi_travnik/ostalo/pumpe/ina.dart';
import 'package:novi_travnik/ostalo/pumpe/merkez.dart';
import 'package:novi_travnik/ostalo/pumpe/td.dart';
import 'package:novi_travnik/ostalo/pumpe/vidak.dart';

class PumpeData {
  List ljekarnice = [
    {
      "name": "BC Vidak",
      "image": 'https://photos.novitravnik.online/samoposluga/vidak.png',
      "lat": 44.18379246627635,
      "lng": 17.67139364786249,
      "distance": 0,
      "navigation": Vidak()
    },
    {
      "name": "Eurotank",
      "image": 'https://photos.novitravnik.online/samoposluga/eurotank.png',
      "lat": 44.18028185815911,
      "lng": 17.669782904804247,
      "distance": 0,
      "navigation": Eurotank()
    },
    {
      "name": "Grič",
      "image": 'https://photos.novitravnik.online/samoposluga/gric.png',
      "lat": 44.1689122616796,
      "lng": 17.655510443688176,
      "distance": 0,
      "navigation": Gric()
    },
    {
      "name": "INA",
      "image": 'https://photos.novitravnik.online/samoposluga/ina.png',
      "lat": 44.17897192272741,
      "lng": 17.665753503134294,
      "distance": 0,
      "navigation": Ina()
    },
    {
      "name": "Merkez Oil",
      "image": 'https://photos.novitravnik.online/samoposluga/merkez.png',
      "lat": 44.165952094030075,
      "lng": 17.650657975317028,
      "distance": 0,
      "navigation": Merkez()
    },
    {
      "name": "TD",
      "image": 'https://photos.novitravnik.online/samoposluga/td.png',
      "lat": 44.177551112610374,
      "lng": 17.664387859230857,
      "distance": 0,
      "navigation": Td()
    },
  ];
}

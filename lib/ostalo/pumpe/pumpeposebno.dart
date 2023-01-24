import 'package:novi_travnik/ostalo/pumpe/eurotank.dart';
import 'package:novi_travnik/ostalo/pumpe/gric.dart';
import 'package:novi_travnik/ostalo/pumpe/ina.dart';
import 'package:novi_travnik/ostalo/pumpe/merkez.dart';
import 'package:novi_travnik/ostalo/pumpe/td.dart';
import 'package:novi_travnik/ostalo/pumpe/vidak.dart';

class MerkezData {
  List aurorici = [
    {
      "name": "Merkez Oil",
      "image": 'assets/samoposluga/merkez.png',
      "lat": 44.165952094030075,
      "lng": 17.650657975317028,
      "distance": 0,
      "navigation": Merkez()
    },
  ];
}

class GricData {
  List aurorici = [
    {
      "name": "Grič",
      "image": 'assets/samoposluga/gric.png',
      "lat": 44.1689122616796,
      "lng": 17.655510443688176,
      "distance": 0,
      "navigation": Gric()
    },
  ];
}

class TdData {
  List aurorici = [
    {
      "name": "TD",
      "image": 'assets/samoposluga/td.png',
      "lat": 44.177551112610374,
      "lng": 17.664387859230857,
      "distance": 0,
      "navigation": Td()
    },
  ];
}

class InaData {
  List aurorici = [
    {
      "name": "INA",
      "image": 'assets/samoposluga/ina.png',
      "lat": 44.17897192272741,
      "lng": 17.665753503134294,
      "distance": 0,
      "navigation": Ina()
    },
  ];
}

class EurotankData {
  List aurorici = [
    {
      "name": "Eurotank",
      "image": 'assets/samoposluga/eurotank.png',
      "lat": 44.18028185815911,
      "lng": 17.669782904804247,
      "distance": 0,
      "navigation": Eurotank()
    },
  ];
}

class VidakData {
  List aurorici = [
    {
      "name": "BC Vidak",
      "image": 'assets/samoposluga/vidak.png',
      "lat": 44.18379246627635,
      "lng": 17.67139364786249,
      "distance": 0,
      "navigation": Vidak()
    },
  ];
}

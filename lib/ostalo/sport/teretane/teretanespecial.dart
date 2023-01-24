import 'package:novi_travnik/ostalo/sport/teretane/fitnessfamily.dart';
import 'package:novi_travnik/ostalo/sport/teretane/lugangym.dart';
import 'package:novi_travnik/ostalo/sport/teretane/lyon.dart';
import 'package:novi_travnik/ostalo/sport/teretane/spartan.dart';

class FitnessData {
  List lionici = [
    {
      "name": "Fitness Family",
      "image": 'assets/samoposluga/merkez.png',
      "lat": 44.17153577666188,
      "lng": 17.661115055275715,
      "distance": 0,
      "navigation": FitnessFamily()
    },
  ];
}

class LionGymData {
  List lionici = [
    {
      "name": "Power GYM",
      "image": 'assets/samoposluga/merkez.png',
      "lat": 44.17141027811654,
      "lng": 17.658529826244212,
      "distance": 0,
      "navigation": LionGym()
    },
  ];
}

class LuganGymData {
  List lionici = [
    {
      "name": "Lugan GYM",
      "image": 'assets/samoposluga/merkez.png',
      "lat": 44.167902678910465,
      "lng": 17.651116880718345,
      "distance": 0,
      "navigation": LuganGym()
    },
  ];
}

class SpartanData {
  List lionici = [
    {
      "name": "Spartan Fitness",
      "image": 'assets/samoposluga/merkez.png',
      "lat": 44.1712877152381,
      "lng": 17.66255800781075,
      "distance": 0,
      "navigation": Spartan()
    },
  ];
}

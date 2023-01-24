import 'package:novi_travnik/ostalo/pumpe/vidak.dart';
import 'package:novi_travnik/ostalo/sport/teretane/fitnessfamily.dart';
import 'package:novi_travnik/ostalo/sport/teretane/lugangym.dart';
import 'package:novi_travnik/ostalo/sport/teretane/lyon.dart';
import 'package:novi_travnik/ostalo/sport/teretane/spartan.dart';

class TeretaneData {
  List ljekarnice = [
    {
      "name": "Fitness Family",
      "image": 'https://photos.novitravnik.online/jos/fitnessfamily.png',
      "lat": 44.17153577666188,
      "lng": 17.661115055275715,
      "distance": 0,
      "navigation": FitnessFamily()
    },
    {
      "name": "Lugan GYM",
      "image": 'https://photos.novitravnik.online/jos/lugangym.png',
      "lat": 44.167902678910465,
      "lng": 17.651116880718345,
      "distance": 0,
      "navigation": LuganGym()
    },
    {
      "name": "Power GYM",
      "image": 'https://photos.novitravnik.online/jos/powergym.png',
      "lat": 44.17141027811654,
      "lng": 17.658529826244212,
      "distance": 0,
      "navigation": LionGym()
    },
    {
      "name": "Spartan Fitness",
      "image": 'https://photos.novitravnik.online/jos/spartanfitness.png',
      "lat": 44.1712877152381,
      "lng": 17.66255800781075,
      "distance": 0,
      "navigation": Spartan()
    },
  ];
}

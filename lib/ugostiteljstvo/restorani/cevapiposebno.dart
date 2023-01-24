import 'package:novi_travnik/ugostiteljstvo/mima.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/bajra.dart';

import 'package:novi_travnik/ugostiteljstvo/restorani/neslanovic.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/raze.dart';

class MimaData {
  List mimici = [
    {
      "name": "Mima",
      "image": 'assets/restoran/mima.png',
      "lat": 44.17217138838408,
      "lng": 17.661193174222344,
      "distance": 0,
      "navigation": Mima()
    },
  ];
}

class BajraData {
  List bajri = [
    {
      "name": "Bajra",
      "image": 'assets/restoran/bajra.png',
      "lat": 44.17004684887674,
      "lng": 17.653799654074298,
      "distance": 0,
      "navigation": Bajra()
    },
  ];
}

class RazeData {
  List razi = [
    {
      "name": "Raze",
      "image": 'assets/restoran/raze.png',
      "lat": 44.16893728907705,
      "lng": 17.653206646028536,
      "distance": 0,
      "navigation": Raze()
    },
  ];
}

class NeslanovicData {
  List neslanovici = [
    {
      "name": "Neslanović",
      "image": 'assets/restoran/neslanovic.png',
      "lat": 44.168782962568045,
      "lng": 17.653427477528364,
      "distance": 0,
      "navigation": Neslanovic()
    },
  ];
}

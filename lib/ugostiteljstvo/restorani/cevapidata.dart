import 'package:novi_travnik/ugostiteljstvo/mima.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/bajra.dart';

import 'package:novi_travnik/ugostiteljstvo/restorani/neslanovic.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/raze.dart';

class CevapiData {
  List cevapi = [
    {
      "name": "Bajra",
      "image": 'https://photos.novitravnik.online/restoran/bajra.png',
      "lat": 44.17004684887674,
      "lng": 17.653799654074298,
      "distance": 0,
      "navigation": Bajra()
    },
    {
      "name": "Mima",
      "image": 'https://photos.novitravnik.online/restoran/mima.png',
      "lat": 44.17217138838408,
      "lng": 17.661193174222344,
      "distance": 0,
      "navigation": Mima()
    },
    {
      "name": "Neslanović",
      "image": 'https://photos.novitravnik.online/restoran/neslanovic.png',
      "lat": 44.168782962568045,
      "lng": 17.653427477528364,
      "distance": 0,
      "navigation": Neslanovic()
    },
    {
      "name": "Raze",
      "image": 'https://photos.novitravnik.online/restoran/reza.png',
      "lat": 44.16893728907705,
      "lng": 17.653206646028536,
      "distance": 0,
      "navigation": Raze()
    },
  ];
}

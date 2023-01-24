import 'package:novi_travnik/prodavnice/pekare/mlinpek.dart';
import 'package:novi_travnik/prodavnice/pekare/pekara.dart';
import 'package:novi_travnik/prodavnice/pekare/pekaraklas.dart';

class PekareData {
  List pekarnice = [
    {
      "name": "Klas",
      "image": 'https://photos.novitravnik.online/samoposluga/randompekara.png',
      "lat": 44.174386818044105,
      "lng": 17.662804562800755,
      "distance": 0,
      "navigation": Klas()
    },
    {
      "name": "Mlinpek",
      "image": 'https://photos.novitravnik.online/samoposluga/randompekara.png',
      "lat": 44.17526963569837,
      "lng": 17.662811681397237,
      "distance": 0,
      "navigation": Mlinpek()
    },
    {
      "name": "Pekara",
      "image": 'https://photos.novitravnik.online/samoposluga/randompekara.png',
      "lat": 44.16866517299827,
      "lng": 17.65324962952416,
      "distance": 0,
      "navigation": Pekara()
    },
  ];
}

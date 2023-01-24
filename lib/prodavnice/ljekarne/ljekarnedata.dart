import 'package:novi_travnik/prodavnice/ljekarne/katava.dart';
import 'package:novi_travnik/prodavnice/ljekarne/lasva.dart';
import 'package:novi_travnik/prodavnice/ljekarne/ljekarna.dart';
import 'package:novi_travnik/prodavnice/ljekarne/ljekarna2.dart';
import 'package:novi_travnik/prodavnice/ljekarne/ljekarna3.dart';

class LjekarneData {
  List ljekarnice = [
    {
      "name": "Katava",
      "image":
          'https://photos.novitravnik.online/samoposluga/randomljekarna.png',
      "lat": 44.17076832181201,
      "lng": 17.65833221628702,
      "distance": 0,
      "navigation": Katava()
    },
    {
      "name": "Lašva Lijek",
      "image": 'https://photos.novitravnik.online/samoposluga/lasva.png',
      "lat": 44.174156003812286,
      "lng": 17.66238590900189,
      "distance": 0,
      "navigation": Lasva()
    },
    {
      "name": "Ljekarna Apoteka",
      "image":
          'https://photos.novitravnik.online/samoposluga/randomljekarna.png',
      "lat": 44.17090273375481,
      "lng": 17.65865198391307,
      "distance": 0,
      "navigation": Ljekarna3()
    },
    {
      "name": "Ljekarna Apoteka",
      "image": 'https://photos.novitravnik.online/samoposluga/apoteka.png',
      "lat": 44.1705858361591,
      "lng": 17.658593008860393,
      "distance": 0,
      "navigation": Ljekarna()
    },
    {
      "name": "PZU",
      "image": 'https://photos.novitravnik.online/samoposluga/pzu.png',
      "lat": 44.16855850268122,
      "lng": 17.653745608321227,
      "distance": 0,
      "navigation": Ljekarna2()
    },
  ];
}

import 'package:novi_travnik/prodavnice/samoposluga/best1.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best2.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best3.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best4.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best5.dart';
import 'package:novi_travnik/prodavnice/samoposluga/konzum1.dart';
import 'package:novi_travnik/prodavnice/samoposluga/konzum2.dart';
import 'package:novi_travnik/prodavnice/samoposluga/mi-commerce.dart';

class SamoposlugaData {
  List samoposluge = [
    {
      "name": "Best",
      "image": 'https://photos.novitravnik.online/samoposluga/best4.png',
      "lat": 44.17407920094797,
      "lng": 17.662321990804646,
      "distance": 0,
      "navigation": Best4()
    },
    {
      "name": "Best",
      "image": 'https://photos.novitravnik.online/samoposluga/best3.png',
      "lat": 44.17710163575821,
      "lng": 17.663823599401752,
      "distance": 0,
      "navigation": Best3()
    },
    {
      "name": "Best",
      "image": 'https://photos.novitravnik.online/samoposluga/best2.png',
      "lat": 44.16908750642459,
      "lng": 17.65395206427791,
      "distance": 0,
      "navigation": Best2()
    },
    {
      "name": "Best",
      "image": 'https://photos.novitravnik.online/samoposluga/samoposluga.jpg',
      "lat": 44.17121949992397,
      "lng": 17.661072349461318,
      "distance": 0,
      "navigation": Best1()
    },
    {
      "name": "Best",
      "image": 'https://photos.novitravnik.online/samoposluga/samoposluga.jpg',
      "lat": 44.17365024456568,
      "lng": 17.658480316227827,
      "distance": 0,
      "navigation": Best5()
    },
    {
      "name": "Konzum",
      "image": 'https://photos.novitravnik.online/samoposluga/konzum.png',
      "lat": 44.17479663155441,
      "lng": 17.662982049681958,
      "distance": 0,
      "navigation": Konzum1()
    },
    {
      "name": "Konzum",
      "image": 'https://photos.novitravnik.online/samoposluga/samoposluga.jpg',
      "lat": 44.17793072362549,
      "lng": 17.664920622893472,
      "distance": 0,
      "navigation": Konzum2()
    },
    {
      "name": "Mi-Commerce",
      "image": 'https://photos.novitravnik.online/samoposluga/mikomerc.png',
      "lat": 44.171881490394846,
      "lng": 17.65955655895352,
      "distance": 0,
      "navigation": Mikomerc()
    },
  ];
}

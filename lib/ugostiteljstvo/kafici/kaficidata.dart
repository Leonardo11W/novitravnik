import 'package:novi_travnik/ugostiteljstvo/kafici/aurora.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/balkan.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/blondi.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/caramela.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/code.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/cool.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/cortado.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/dallas.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/derby.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/galaksija.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/kaktus.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/lion.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/lira.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/lotos.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/picasso.dart';

import 'package:novi_travnik/ugostiteljstvo/kafici/star.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/studio.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/time.dart';

class Data {
  List allstores = [
    {
      "name": "Aurora",
      "image": 'https://photos.novitravnik.online/kafici/aurora.png',
      "lat": 44.17307264701855,
      "lng": 17.662645389520897,
      "distance": 0,
      "navigation": Aurora()
    },
    {
      "name": "Balkan",
      "image": 'https://photos.novitravnik.online/kafici/balkan.png',
      "lat": 44.17501143788187,
      "lng": 17.662833613932996,
      "distance": 0,
      "navigation": Balkan()
    },
    {
      "name": "Blondi",
      "image": "https://photos.novitravnik.online/kafici/blondi.png",
      "lat": 44.16959271824926,
      "lng": 17.653939102937482,
      "distance": 0,
      "navigation": Blondi()
    },
    {
      "name": "Caramela",
      "image": "https://photos.novitravnik.online/kafici/caramela.png",
      "lat": 44.16887060504823,
      "lng": 17.649394162502333,
      "distance": 0,
      "navigation": Caramela()
    },
    {
      "name": "Code",
      "image": 'https://photos.novitravnik.online/kafici/code.png',
      "lat": 44.17348048754259,
      "lng": 17.66287069506971,
      "distance": 0,
      "navigation": Code()
    },
    {
      "name": "Cool",
      "image": "https://photos.novitravnik.online/kafici/cool.png",
      "lat": 44.168798009446,
      "lng": 17.651777333719828,
      "distance": 0,
      "navigation": Cool()
    },
    {
      "name": "Cortado",
      "image": 'https://photos.novitravnik.online/kafici/cortado.png',
      "lat": 44.17072511361714,
      "lng": 17.658954818412692,
      "distance": 0,
      "navigation": Cortado()
    },
    {
      "name": "Dallas",
      "image": "https://photos.novitravnik.online/kafici/dallas.png",
      "lat": 44.16866417360738,
      "lng": 17.65276115068511,
      "distance": 0,
      "navigation": Dallas()
    },
    {
      "name": "Derby",
      "image": "https://photos.novitravnik.online/kafici/derby.png",
      "lat": 44.169824807231414,
      "lng": 17.65700893215878,
      "distance": 0,
      "navigation": Derby()
    },
    {
      "name": "Kaktus",
      "image": "https://photos.novitravnik.online/kafici/kaktus.png",
      "lat": 44.168397381618796,
      "lng": 17.653328241729213,
      "distance": 0,
      "navigation": Kaktus()
    },
    {
      "name": "Galaksija",
      "image": "https://photos.novitravnik.online/kafici/galaksija.png",
      "lat": 44.168455759358324,
      "lng": 17.647983837879526,
      "distance": 0,
      "navigation": Galaksija()
    },
    {
      "name": "Lira",
      "image": "https://photos.novitravnik.online/kafici/noimage.png",
      "lat": 44.16970070222539,
      "lng": 17.656491546200925,
      "distance": 0,
      "navigation": Lira()
    },
    {
      "name": "Lion",
      "image": 'https://photos.novitravnik.online/kafici/lion.png',
      "lat": 44.171474329605005,
      "lng": 17.65847288460983,
      "distance": 0,
      "navigation": Lion()
    },
    {
      "name": "Lotos",
      "image": 'https://photos.novitravnik.online/kafici/lotos.png',
      "lat": 44.170790475910515,
      "lng": 17.659082871788968,
      "distance": 0,
      "navigation": Lotos()
    },
    {
      "name": "Picasso",
      "image": "https://photos.novitravnik.online/kafici/picasso.png",
      "lat": 44.17055121084639,
      "lng": 17.658490664396826,
      "distance": 0,
      "navigation": Picasso()
    },
    {
      "name": "Planet",
      "image": "https://photos.novitravnik.online/kafici/planet.png",
      "lat": 44.17158304389583,
      "lng": 17.660534104641236,
      "distance": 0,
    },
    {
      "name": "Star",
      "image": 'https://photos.novitravnik.online/kafici/star.png',
      "lat": 44.17440112432651,
      "lng": 17.662921569458234,
      "distance": 0,
      "navigation": Star()
    },
    {
      "name": "Studio",
      "image": 'https://photos.novitravnik.online/kafici/studio.png',
      "lat": 44.1704694,
      "lng": 17.6583667,
      "distance": 0,
      "navigation": Studio()
    },
    {
      "name": "Time",
      "image": 'https://photos.novitravnik.online/kafici/time.png',
      "lat": 44.17402010877519,
      "lng": 17.663014631859326,
      "distance": 0,
      "navigation": Time()
    },
  ];
}

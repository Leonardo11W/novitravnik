import 'package:novi_travnik/ostalo/uredbe/domkulture.dart';
import 'package:novi_travnik/ostalo/uredbe/duga.dart';
import 'package:novi_travnik/ostalo/uredbe/ftm.dart';
import 'package:novi_travnik/ostalo/uredbe/hteronet.dart';
import 'package:novi_travnik/ostalo/uredbe/kantonalnisud.dart';
import 'package:novi_travnik/ostalo/uredbe/opcina.dart';
import 'package:novi_travnik/ostalo/uredbe/osnovnaglazbena.dart';
import 'package:novi_travnik/ostalo/uredbe/osnovnaskola.dart';
import 'package:novi_travnik/ostalo/uredbe/policijska.dart';
import 'package:novi_travnik/ostalo/uredbe/postamostar.dart';
import 'package:novi_travnik/ostalo/uredbe/srednjaglazbena.dart';
import 'package:novi_travnik/ostalo/uredbe/srednjaskola.dart';
import 'package:novi_travnik/ostalo/uredbe/stop.dart';

import 'package:novi_travnik/ostalo/uredbe/vatrogasnidom.dart';
import 'package:novi_travnik/ostalo/uredbe/vrtic.dart';

class UredbeData {
  List ljekarnice = [
    {
      "name": "Autoškola STOP",
      "image": 'https://photos.novitravnik.online/more/stop.png',
      "lat": 44.17200139252653,
      "lng": 17.661051526677248,
      "distance": 0,
      "navigation": Stop()
    },
    {
      "name": "Dječji Vrtić",
      "image": 'https://photos.novitravnik.online/jos/vrtic.png',
      "lat": 44.17102798077178,
      "lng": 17.6558450400258,
      "distance": 0,
      "navigation": Djecjivrtic()
    },
    {
      "name": "Dom kulture",
      "image": 'https://photos.novitravnik.online/more/domkulture.png',
      "lat": 44.170087052078976,
      "lng": 17.65523663498844,
      "distance": 0,
      "navigation": Domkulture()
    },
    {
      "name": "Duga",
      "image": 'https://photos.novitravnik.online/jos/duga.png',
      "lat": 44.171487730976935,
      "lng": 17.65701182048855,
      "distance": 0,
      "navigation": Duga()
    },
    {
      "name": "FTM",
      "image": 'https://photos.novitravnik.online/more/ftm.png',
      "lat": 44.17878014707873,
      "lng": 17.667114820883434,
      "distance": 0,
      "navigation": FTM()
    },
    {
      "name": "Hrvatska pošta Mostar",
      "image": 'https://photos.novitravnik.online/more/posta.png',
      "lat": 44.170432387541844,
      "lng": 17.657252315063577,
      "distance": 0,
      "navigation": Postamostar()
    },
    {
      "name": "HT ERONET",
      "image": 'https://photos.novitravnik.online/more/eronet.png',
      "lat": 44.17053560375979,
      "lng": 17.65714591762247,
      "distance": 0,
      "navigation": Hteronet()
    },
    {
      "name": "Kantonalni sud",
      "image": 'https://photos.novitravnik.online/jos/sud.png',
      "lat": 44.16973244644625,
      "lng": 17.655118255196864,
      "distance": 0,
      "navigation": KantonalniSud()
    },
    {
      "name": "Osnovna Glaz. Škola",
      "image": 'https://photos.novitravnik.online/jos/osnovnaglazbena.png',
      "lat": 44.17117050516021,
      "lng": 17.655628743804197,
      "distance": 0,
      "navigation": Osnovnaglazbena()
    },
    {
      "name": "Općina Novi Travnik",
      "image": 'https://photos.novitravnik.online/jos/opcina.png',
      "lat": 44.17044489268661,
      "lng": 17.656856689233628,
      "distance": 0,
      "navigation": Opcina()
    },
    {
      "name": "Osnovna Škola N.T.",
      "image": 'https://photos.novitravnik.online/jos/osnovnaskola.png',
      "lat": 44.171934308407124,
      "lng": 17.65835314479747,
      "distance": 0,
      "navigation": Osnovnaskola()
    },
    {
      "name": "Policijska Stanica",
      "image": 'https://photos.novitravnik.online/jos/policija.png',
      "lat": 44.17166628658912,
      "lng": 17.657752409532943,
      "distance": 0,
      "navigation": Policijska()
    },
    {
      "name": "Srednja Glaz. Škola",
      "image": 'https://photos.novitravnik.online/more/srednjaglazbena.png',
      "lat": 44.17172041458867,
      "lng": 17.657879196232923,
      "distance": 0,
      "navigation": SrednjaGlazbenaSkola()
    },
    {
      "name": "Srednja Škola N.T.",
      "image": 'https://photos.novitravnik.online/more/srednjaskola.png',
      "lat": 44.171934308407124,
      "lng": 17.65835314479747,
      "distance": 0,
      "navigation": SrednjaSkola()
    },
    {
      "name": "Vatrogasni Dom",
      "image": 'https://photos.novitravnik.online/more/vatrogasni.png',
      "lat": 44.16721159633811,
      "lng": 17.651966323945093,
      "distance": 0,
      "navigation": Vatrogasnidom()
    },
  ];
}

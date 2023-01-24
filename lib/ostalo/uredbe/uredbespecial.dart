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

class PolicijaData {
  List aurorici = [
    {
      "name": "Policijska Stanica",
      "image": 'assets/samoposluga/.png',
      "lat": 44.173264605759314,
      "lng": 17.659450795383897,
      "distance": 0,
      "navigation": Policijska()
    },
  ];
}

class OsnovnaskolaData {
  List aurorici = [
    {
      "name": "Osnovna Škola N.T.",
      "image": 'assets/samoposluga/.png',
      "lat": 44.171934308407124,
      "lng": 17.65835314479747,
      "distance": 0,
      "navigation": Osnovnaskola()
    },
  ];
}

class SrednjaskolaData {
  List aurorici = [
    {
      "name": "Srednja Škola N.T.",
      "image": 'assets/samoposluga/.png',
      "lat": 44.171934308407124,
      "lng": 17.65835314479747,
      "distance": 0,
      "navigation": SrednjaSkola()
    },
  ];
}

class SrednjaglazbenaskolaData {
  List aurorici = [
    {
      "name": "Srednja Glazbena Škola",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17172041458867,
      "lng": 17.657879196232923,
      "distance": 0,
      "navigation": SrednjaGlazbenaSkola()
    },
  ];
}

class DugaData {
  List aurorici = [
    {
      "name": "Duga",
      "image": 'assets/samoposluga/.png',
      "lat": 44.171487730976935,
      "lng": 17.65701182048855,
      "distance": 0,
      "navigation": Duga()
    },
  ];
}

class VrticData {
  List aurorici = [
    {
      "name": "Dječji Vrtić",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17102798077178,
      "lng": 17.6558450400258,
      "distance": 0,
      "navigation": Djecjivrtic()
    },
  ];
}

class OsnovnaglazbenaData {
  List aurorici = [
    {
      "name": "Osnovna Glazbena Škola",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17117050516021,
      "lng": 17.655628743804197,
      "distance": 0,
      "navigation": Osnovnaglazbena()
    },
  ];
}

class KantonalnisudData {
  List aurorici = [
    {
      "name": "Kantonalni sud",
      "image": 'assets/samoposluga/.png',
      "lat": 44.16973244644625,
      "lng": 17.655118255196864,
      "distance": 0,
      "navigation": KantonalniSud()
    },
  ];
}

class DomkultureData {
  List aurorici = [
    {
      "name": "Dom kulture",
      "image": 'assets/samoposluga/.png',
      "lat": 44.170087052078976,
      "lng": 17.65523663498844,
      "distance": 0,
      "navigation": Domkulture()
    },
  ];
}

class OpcinaData {
  List aurorici = [
    {
      "name": "Općina Novi Travnik",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17044489268661,
      "lng": 17.656856689233628,
      "distance": 0,
      "navigation": Opcina()
    },
  ];
}

class PostamostarData {
  List aurorici = [
    {
      "name": "Hrvatska pošta Mostar",
      "image": 'assets/samoposluga/.png',
      "lat": 44.170432387541844,
      "lng": 17.657252315063577,
      "distance": 0,
      "navigation": Postamostar()
    },
  ];
}

class HteronetData {
  List aurorici = [
    {
      "name": "HT ERONET",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17053560375979,
      "lng": 17.65714591762247,
      "distance": 0,
      "navigation": Hteronet()
    },
  ];
}

class VatrogasniDomData {
  List aurorici = [
    {
      "name": "Vatrogasni Dom",
      "image": 'assets/samoposluga/.png',
      "lat": 44.16721159633811,
      "lng": 17.651966323945093,
      "distance": 0,
      "navigation": Vatrogasnidom()
    },
  ];
}

class FTMdata {
  List aurorici = [
    {
      "name": "FTM",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17878014707873,
      "lng": 17.667114820883434,
      "distance": 0,
      "navigation": FTM()
    },
  ];
}

class TelemachData {
  List aurorici = [
    {
      "name": "Telemach BiH",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17133960695388,
      "lng": 17.660913602459473,
      "distance": 0,
      "navigation": FTM()
    },
  ];
}

class StopData {
  List aurorici = [
    {
      "name": "Autoškola STOP",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17200139252653,
      "lng": 17.661051526677248,
      "distance": 0,
      "navigation": Stop()
    },
  ];
}

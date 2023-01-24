import 'package:novi_travnik/ostalo/saloni/cuperak.dart';
import 'package:novi_travnik/ostalo/saloni/elegant.dart';
import 'package:novi_travnik/ostalo/saloni/frizbi.dart';
import 'package:novi_travnik/ostalo/saloni/gabrijela.dart';
import 'package:novi_travnik/ostalo/saloni/keka.dart';
import 'package:novi_travnik/ostalo/saloni/lavida.dart';
import 'package:novi_travnik/ostalo/saloni/nina.dart';
import 'package:novi_travnik/ostalo/saloni/spajk.dart';
import 'package:novi_travnik/postavke.dart';

class SaloniData {
  List ostalep = [
    {
      "name": "Beauty Bar",
      "image": 'https://photos.novitravnik.online/samoposluga/gabrijela.png',
      "lat": 44.17437061142184,
      "lng": 17.663707601169822,
      "distance": 0,
      "navigation": Gabrijela(),
      "opis": (BHS == true)
          ? "Kozmetički salon"
          : (English == true)
              ? "Beauty salon"
              : "Schönheitssalon"
    },
    {
      "name": "Čuperak",
      "image": 'https://photos.novitravnik.online/samoposluga/cuperak.png',
      "lat": 44.17245684039236,
      "lng": 17.660953559619735,
      "distance": 0,
      "navigation": Cuperak(),
      "opis": (BHS == true)
          ? "Frizerski salon"
          : (English == true)
              ? "Hair salon"
              : "Friseur"
    },
    {
      "name": "Elegant ",
      "image": 'https://photos.novitravnik.online/samoposluga/elegant.png',
      "lat": 44.172476284487026,
      "lng": 17.66051663697429,
      "distance": 0,
      "navigation": Elegant(),
      "opis": (BHS == true)
          ? "Frizerski salon"
          : (English == true)
              ? "Hair salon"
              : "Friseur"
    },
    {
      "name": "Frizbi",
      "image": 'https://photos.novitravnik.online/samoposluga/frizbi.png',
      "lat": 44.174349847841825,
      "lng": 17.66344494542566,
      "distance": 0,
      "navigation": Frizbi(),
      "opis": (BHS == true)
          ? "Frizerski salon"
          : (English == true)
              ? "Hair salon"
              : "Friseur"
    },
    {
      "name": "Keka",
      "image": 'https://photos.novitravnik.online/samoposluga/keka.png',
      "lat": 44.17279749777492,
      "lng": 17.66122579535168,
      "distance": 0,
      "navigation": Keka(),
      "opis": (BHS == true)
          ? "Frizerski salon"
          : (English == true)
              ? "Hair salon"
              : "Friseur"
    },
    {
      "name": "La Diva",
      "image": 'https://photos.novitravnik.online/samoposluga/lavida.png',
      "lat": 44.17353593747242,
      "lng": 17.663711398127177,
      "distance": 0,
      "navigation": LaDiva(),
      "opis": (BHS == true)
          ? "Kozmetički salon"
          : (English == true)
              ? "Beauty salon"
              : "Schönheitssalon"
    },
    {
      "name": "Nina ",
      "image": 'https://photos.novitravnik.online/samoposluga/nina.png',
      "lat": 44.174501520919804,
      "lng": 17.662607962254157,
      "distance": 0,
      "navigation": Nina(),
      "opis": (BHS == true)
          ? "Frizerski salon"
          : (English == true)
              ? "Hair salon"
              : "Friseur"
    },
    {
      "name": "Spyk",
      "image": 'https://photos.novitravnik.online/samoposluga/spyk.png',
      "lat": 44.17136826217146,
      "lng": 17.66097593903684,
      "distance": 0,
      "navigation": Spajk(),
      "opis": (BHS == true)
          ? "Frizerski salon"
          : (English == true)
              ? "Hair salon"
              : "Friseur"
    },
  ];
}

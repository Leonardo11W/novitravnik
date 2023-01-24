import 'package:novi_travnik/prijevoz/raspored/stanicavitez.dart';
import 'package:novi_travnik/prodavnice/pekare/mlinpek.dart';
import 'package:novi_travnik/prodavnice/pekare/pekara.dart';
import 'package:novi_travnik/prodavnice/pekare/pekaraklas.dart';

class StanicanoviData {
  List stanice = [
    {
      "name": "Klas",
      "image": 'assets/samoposluga/stajaliste.png',
      "lat": 44.16652913605547,
      "lng": 17.651071931370453,
      "distance": 0,
      "navigation": Klas()
    },
  ];
}

class GradskastanicaData {
  List stanice = [
    {
      "name": "Klas",
      "image": 'assets/samoposluga/stajaliste.png',
      "lat": 44.175895991688016,
      "lng": 17.663297076706574,
      "distance": 0,
      "navigation": Klas()
    },
  ];
}

class StanicaTravnikData {
  List stanice = [
    {
      "name": "Klas",
      "image": 'assets/samoposluga/stajaliste.png',
      "lat": 44.22722789708058,
      "lng": 17.65756043468433,
      "distance": 0,
      "navigation": Klas()
    },
  ];
}

class StanicaVitezData {
  List stanice = [
    {
      "name": "Klas",
      "image": 'assets/samoposluga/stajaliste.png',
      "lat": 44.1531846256963,
      "lng": 17.79181089797454,
      "distance": 0,
      "navigation": StanicaVitez()
    },
  ];
}

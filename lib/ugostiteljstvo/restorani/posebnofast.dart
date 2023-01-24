import 'package:novi_travnik/ugostiteljstvo/restorani/kate.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/kingodoner.dart';

class KateData {
  List katici = [
    {
      "name": "Ice",
      "image": 'assets/lounge/kate.png',
      "lat": 44.17170686078041,
      "lng": 17.659280159528,
      "distance": 0,
      "navigation": Kate()
    },
  ];
}

class KingData {
  List katici = [
    {
      "name": "King Doner",
      "image":
          'https://photos.novitravnik.online/restoran/317849518_170620105581402_5182643441585213190_n.jpg',
      "lat": 44.174151307377564,
      "lng": 17.66312603434316,
      "distance": 0,
      "navigation": Kingdoner()
    },
  ];
}

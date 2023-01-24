import 'package:novi_travnik/ugostiteljstvo/restorani/buco.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/kate.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/kingodoner.dart';

class FastFoodData {
  List fastovi = [
    {
      "name": "Buco",
      "image": 'https://photos.novitravnik.online/jos/buco.png',
      "lat": 44.16949822131104,
      "lng": 17.656282157181888,
      "distance": 0,
      "navigation": Buco()
    },
    {
      "name": "Kate",
      "image": 'https://photos.novitravnik.online/restoran/kate.png',
      "lat": 44.17170686078041,
      "lng": 17.659280159528,
      "distance": 0,
      "navigation": Kate()
    },
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

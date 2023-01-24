import 'package:novi_travnik/ugostiteljstvo/lounge/Intermezzo.dart';
import 'package:novi_travnik/ugostiteljstvo/lounge/escape.dart';
import 'package:novi_travnik/ugostiteljstvo/lounge/ice.dart';

class LoungeData {
  List lounges = [
    {
      "name": "Escape",
      "image": 'https://photos.novitravnik.online/lounge/escape.png',
      "lat": 44.16772424431165,
      "lng": 17.651951988484363,
      "distance": 0,
      "navigation": Escape()
    },
    {
      "name": "Ice",
      "image": 'https://photos.novitravnik.online/lounge/ice.png',
      "lat": 44.169984167129336,
      "lng": 17.657359228667595,
      "distance": 0,
      "navigation": Ice()
    },
    {
      "name": "Intermezzo",
      "image": 'https://photos.novitravnik.online/lounge/intermezzo.png',
      "lat": 44.16800817321762,
      "lng": 17.65000118465714,
      "distance": 0,
      "navigation": Intermezzo()
    },
  ];
}

import 'package:novi_travnik/ostalo/dentali/dentalcentarks.dart';
import 'package:novi_travnik/ostalo/dentali/dentalm.dart';
import 'package:novi_travnik/ostalo/dentali/dentalstudio.dart';
import 'package:novi_travnik/ostalo/dentali/dusko.dart';
import 'package:novi_travnik/ostalo/dentali/medicalcentar.dart';
import 'package:novi_travnik/ostalo/dentali/ordinacija.dart';
import 'package:novi_travnik/ostalo/pumpe/vidak.dart';

class DentaliData {
  List ljekarnice = [
    {
      "name": "DentalCentar KS",
      "image": 'https://photos.novitravnik.online/more/dentalcentarks.png',
      "lat": 44.16872143271498,
      "lng": 17.653514184012806,
      "distance": 0,
      "navigation": DentalCentarKS()
    },
    {
      "name": "Dental Studio",
      "image": 'https://photos.novitravnik.online/more/dentalstudio.png',
      "lat": 44.17084035714651,
      "lng": 17.658149965053944,
      "distance": 0,
      "navigation": DentalStudio()
    },
    {
      "name": "Dental M",
      "image": 'https://photos.novitravnik.online/more/mirza.png',
      "lat": 44.17116182921657,
      "lng": 17.658809177884734,
      "distance": 0,
      "navigation": DentalMirza()
    },
    {
      "name": "Duško Pajkić Zubar",
      "image": 'https://photos.novitravnik.online/more/dusko.png',
      "lat": 44.174542595410365,
      "lng": 17.662514625112824,
      "distance": 0,
      "navigation": Dusko()
    },
    {
      "name": "Medical Centar",
      "image": 'https://photos.novitravnik.online/more/medicalcentar.png',
      "lat": 44.17194391844639,
      "lng": 17.661910090370675,
      "distance": 0,
      "navigation": MedicalCentar()
    },
    {
      "name": "Neda Erak",
      "image": 'https://photos.novitravnik.online/more/neda.png',
      "lat": 44.17236844480612,
      "lng": 17.661209195178206,
      "distance": 0,
      "navigation": Neda()
    },
  ];
}

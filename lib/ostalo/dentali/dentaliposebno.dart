import 'package:novi_travnik/ostalo/dentali/dentalcentarks.dart';
import 'package:novi_travnik/ostalo/dentali/dentalm.dart';
import 'package:novi_travnik/ostalo/dentali/dentalstudio.dart';
import 'package:novi_travnik/ostalo/dentali/dusko.dart';
import 'package:novi_travnik/ostalo/dentali/medicalcentar.dart';
import 'package:novi_travnik/ostalo/dentali/ordinacija.dart';

class DentalCentarData {
  List aurorici = [
    {
      "name": "DentalCentar KS",
      "image": 'assets/samoposluga/.png',
      "lat": 44.16872143271498,
      "lng": 17.653514184012806,
      "distance": 0,
      "navigation": DentalCentarKS()
    },
  ];
}

class DentalStudioData {
  List aurorici = [
    {
      "name": "Dental Studio",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17084035714651,
      "lng": 17.658149965053944,
      "distance": 0,
      "navigation": DentalStudio()
    },
  ];
}

class MedicalCentarData {
  List aurorici = [
    {
      "name": "Medical Centar",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17194391844639,
      "lng": 17.661910090370675,
      "distance": 0,
      "navigation": MedicalCentar()
    },
  ];
}

class DuskoData {
  List aurorici = [
    {
      "name": "Dusko Pajkic Zubar",
      "image": 'assets/samoposluga/.png',
      "lat": 44.174542595410365,
      "lng": 17.662514625112824,
      "distance": 0,
      "navigation": Dusko()
    },
  ];
}

class MirzaData {
  List aurorici = [
    {
      "name": "Dental M",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17116182921657,
      "lng": 17.658809177884734,
      "distance": 0,
      "navigation": DentalMirza()
    },
  ];
}

class NedaState {
  List aurorici = [
    {
      "name": "Neda Erak",
      "image": 'assets/samoposluga/.png',
      "lat": 44.17236844480612,
      "lng": 17.661209195178206,
      "distance": 0,
      "navigation": Neda()
    },
  ];
}

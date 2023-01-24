import 'package:novi_travnik/ostalo/banke/addikoatm.dart';
import 'package:novi_travnik/ostalo/banke/addikobanka.dart';
import 'package:novi_travnik/ostalo/banke/intesa.dart';
import 'package:novi_travnik/ostalo/banke/intesabankomat.dart';
import 'package:novi_travnik/ostalo/banke/nlbbankomat.dart';
import 'package:novi_travnik/ostalo/banke/unicredit.dart';
import 'package:novi_travnik/ostalo/banke/unicreditbankomat.dart';
import 'package:novi_travnik/ostalo/banke/ziraat.dart';

class UnicreditData {
  List aurorici = [
    {
      "name": "UniCredit",
      "image": 'https://photos.novitravnik.online/samoposluga/unicredit.png',
      "lat": 44.170232475216494,
      "lng": 17.65691401131171,
      "distance": 0,
      "navigation": Unicredit(),
      "opis": "Banka"
    }
  ];
}

class UnicreditbankomatData {
  List aurorici = [
    {
      "name": "UniCredit",
      "image": 'https://photos.novitravnik.online/samoposluga/unicredit.png',
      "lat": 44.170232475216494,
      "lng": 17.65691401131171,
      "distance": 0,
      "navigation": Unicreditbankomat(),
      "opis": "Bankomat"
    }
  ];
}

class IntesaData {
  List aurorici = [
    {
      "name": "Intesa Sanpaolo",
      "image": 'https://photos.novitravnik.online/samoposluga/intesa.png',
      "lat": 44.17040850600559,
      "lng": 17.656705888297925,
      "distance": 0,
      "navigation": Intesa(),
      "opis": "Banka"
    }
  ];
}

class nlbbankomatData {
  List aurorici = [
    {
      "name": "NLB",
      "image": 'https://photos.novitravnik.online/samoposluga/bankomat.png',
      "lat": 44.17033636496983,
      "lng": 17.658017110073235,
      "distance": 0,
      "navigation": nlbbankomat(),
      "opis": "Bankomat"
    }
  ];
}

class addikobankdata {
  List aurorici = [
    {
      "name": "Addiko Banka",
      "image": 'https://photos.novitravnik.online/samoposluga/addiko.png',
      "lat": 44.17517219728863,
      "lng": 17.662883008352882,
      "distance": 0,
      "navigation": Addikobanka(),
      "opis": "Banka"
    }
  ];
}

class UnicreditbankomatData2 {
  List aurorici = [
    {
      "name": "UniCredit",
      "image": 'https://photos.novitravnik.online/samoposluga/bankomati.png',
      "lat": 44.17702885622668,
      "lng": 17.664019834143872,
      "distance": 0,
      "navigation": UnicreditbankomatData2(),
      "opis": "Bankomat"
    }
  ];
}

class IntesaBankomatData {
  List aurorici = [
    {
      "name": "Intesa Sanpaolo",
      "image": 'https://photos.novitravnik.online/samoposluga/bankomati.png',
      "lat": 44.17707782443389,
      "lng": 17.66395250455311,
      "distance": 0,
      "navigation": Intesa2(),
      "opis": "Bankomat"
    }
  ];
}

class AddikoAtmdata {
  List bestici2 = [
    {
      "name": "Addiko Banka",
      "image": 'https://photos.novitravnik.online/samoposluga/best2.png',
      "lat": 44.16910722528525,
      "lng": 17.653997690316448,
      "distance": 0,
      "navigation": addikoatm(),
      "opis": "Bankomat"
    }
  ];
}

class ziraatdata {
  List bestici2 = [
    {
      "name": "Ziraat Banka",
      "image": 'https://photos.novitravnik.online/samoposluga/best2.png',
      "lat": 44.16910722528525,
      "lng": 17.653997690316448,
      "distance": 0,
      "navigation": ziraat(),
      "opis": "Bankomat"
    }
  ];
}

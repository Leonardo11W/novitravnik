import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/prodavnice/ostalo/agrotrade.dart';
import 'package:novi_travnik/prodavnice/ostalo/alatnica.dart';
import 'package:novi_travnik/prodavnice/ostalo/aminostore.dart';
import 'package:novi_travnik/prodavnice/ostalo/arizona.dart';
import 'package:novi_travnik/prodavnice/ostalo/bdelectronic.dart';
import 'package:novi_travnik/prodavnice/ostalo/clm.dart';
import 'package:novi_travnik/prodavnice/ostalo/cm.dart';
import 'package:novi_travnik/prodavnice/ostalo/digitalis.dart';
import 'package:novi_travnik/prodavnice/ostalo/dm.dart';
import 'package:novi_travnik/prodavnice/ostalo/dugatehna.dart';
import 'package:novi_travnik/prodavnice/ostalo/eurodom.dart';
import 'package:novi_travnik/prodavnice/ostalo/frutty.dart';
import 'package:novi_travnik/prodavnice/ostalo/hari.dart';
import 'package:novi_travnik/prodavnice/ostalo/izbor.dart';
import 'package:novi_travnik/prodavnice/ostalo/lujanovic.dart';
import 'package:novi_travnik/prodavnice/ostalo/marta.dart';
import 'package:novi_travnik/prodavnice/ostalo/medic.dart';
import 'package:novi_travnik/prodavnice/ostalo/muzuri_pj.dart';
import 'package:novi_travnik/prodavnice/ostalo/n&a.dart';
import 'package:novi_travnik/prodavnice/ostalo/robot.dart';
import 'package:novi_travnik/prodavnice/ostalo/ruza.dart';
import 'package:novi_travnik/prodavnice/ostalo/sabelja.dart';
import 'package:novi_travnik/prodavnice/ostalo/sorakomp.dart';
import 'package:novi_travnik/prodavnice/ostalo/ssd.dart';
import 'package:novi_travnik/prodavnice/ostalo/trsatpolo.dart';

class OstaloPData {
  List ostalep = [
    {
      "name": "Agro Trade",
      "image": 'https://photos.novitravnik.online/samoposluga/agrotrade.png',
      "lat": 44.17606890591719,
      "lng": 17.662175240504844,
      "distance": 0,
      "navigation": Agrotrade(),
      "opis": (BHS == true)
          ? "Mješovita roba"
          : (English == true)
              ? "Mixed goods"
              : "Gemischte Ware"
    },
    {
      "name": "Alatnica",
      "image": 'https://photos.novitravnik.online/samoposluga/alatnica.png',
      "lat": 44.18014867837606,
      "lng": 17.668667383384218,
      "distance": 0,
      "navigation": Alatnica(),
      "opis": (BHS == true)
          ? "Alatnica"
          : (English == true)
              ? "Toolbox"
              : "Werkzeugkasten"
    },
    {
      "name": "Aminostore",
      "image": 'https://photos.novitravnik.online/samoposluga/aminostore.png',
      "lat": 44.169288832655056,
      "lng": 17.644639656408067,
      "distance": 0,
      "navigation": Aminostore(),
      "opis": (BHS == true)
          ? "Prodavaonica Bilja"
          : (English == true)
              ? "Herb shop"
              : "Kräuterladen"
    },
    {
      "name": "Arizona",
      "image": 'https://photos.novitravnik.online/samoposluga/arizona.png',
      "lat": 44.16904728975522,
      "lng": 17.6527158784599,
      "distance": 0,
      "navigation": Arizona(),
      "opis": (BHS == true)
          ? "Trgovački Centar"
          : (English == true)
              ? "Shopping Mall"
              : "Einkaufszentrum"
    },
    {
      "name": "BD-electronic",
      "image": 'https://photos.novitravnik.online/jos/bd.png',
      "lat": 44.17532037716164,
      "lng": 17.665592333948172,
      "distance": 0,
      "navigation": BDElectronic(),
      "opis": (BHS == true)
          ? "Elektronička roba"
          : (English == true)
              ? "Electronic goods"
              : "Elektroartikel"
    },
    {
      "name": "CM",
      "image": 'https://photos.novitravnik.online/samoposluga/cm.png',
      "lat": 44.171871646940765,
      "lng": 17.661731422713743,
      "distance": 0,
      "navigation": Cm(),
      "opis": (BHS == true)
          ? "Prodavaonica Kozmetike"
          : (English == true)
              ? "Cosmetics store"
              : "Kosmetikgeschäft"
    },
    {
      "name": "C.L.M",
      "image": 'https://photos.novitravnik.online/samoposluga/clm.png',
      "lat": 44.178894046996916,
      "lng": 17.66653663837456,
      "distance": 0,
      "navigation": clm(),
      "opis": (BHS == true)
          ? "Prodavaonica autodijelova"
          : (English == true)
              ? "Auto parts store"
              : "Autoteile Shop"
    },
    {
      "name": "Digitalis",
      "image": 'https://photos.novitravnik.online/samoposluga/digitalis.png',
      "lat": 44.17790081824496,
      "lng": 17.66502162822638,
      "distance": 0,
      "navigation": Digitalis(),
      "opis": (BHS == true)
          ? "Elektronička roba"
          : (English == true)
              ? "Electronic goods"
              : "Elektroartikel"
    },
    {
      "name": "DM",
      "image": 'https://photos.novitravnik.online/samoposluga/dm.png',
      "lat": 44.16997630764356,
      "lng": 17.654257460120924,
      "distance": 0,
      "navigation": dm(),
      "opis": (BHS == true)
          ? "Drogerie Markt"
          : (English == true)
              ? "Drogerie Markt"
              : "Drogerie Markt"
    },
    {
      "name": "Dugatehna",
      "image": 'https://photos.novitravnik.online/samoposluga/dugatehna.png',
      "lat": 44.17485421906819,
      "lng": 17.66297797297374,
      "distance": 0,
      "navigation": Dugatehna(),
      "opis": (BHS == true)
          ? "Prodavaonica Boja"
          : (English == true)
              ? "Paint shop"
              : "Lackiererei"
    },
    {
      "name": "Eurodom",
      "image": 'https://photos.novitravnik.online/samoposluga/eurodom.png',
      "lat": 44.178697366266995,
      "lng": 17.66602790984528,
      "distance": 0,
      "navigation": Eurodom(),
      "opis": (BHS == true)
          ? "Građevinski materijal"
          : (English == true)
              ? "Building material"
              : "Baumaterial"
    },
    {
      "name": "Frutty shop",
      "image": 'https://photos.novitravnik.online/samoposluga/frutty.png',
      "lat": 44.178697366266995,
      "lng": 17.66602790984528,
      "distance": 0,
      "navigation": Frutty(),
      "opis": (BHS == true)
          ? "Voćarna"
          : (English == true)
              ? "Orchard"
              : "Obstgarten"
    },
    {
      "name": "Hari",
      "image": 'https://photos.novitravnik.online/samoposluga/hari.png',
      "lat": 44.169025249244996,
      "lng": 17.651180183508902,
      "distance": 0,
      "navigation": Hari(),
      "opis": (BHS == true)
          ? "Trgovački Centar"
          : (English == true)
              ? "Shopping Mall"
              : "Einkaufszentrum"
    },
    {
      "name": "Izbor Trgovine",
      "image": 'https://photos.novitravnik.online/samoposluga/izbor.png',
      "lat": 44.172008238132406,
      "lng": 17.66210961417882,
      "distance": 0,
      "navigation": Izbortrgovine(),
      "opis": (BHS == true)
          ? "Mješovita roba"
          : (English == true)
              ? "Mixed goods"
              : "Gemischte Ware"
    },
    {
      "name": "Lujanović",
      "image": 'https://photos.novitravnik.online/samoposluga/lujanovic.png',
      "lat": 44.17268917103481,
      "lng": 17.66234012942575,
      "distance": 0,
      "navigation": Lujanovic(),
      "opis": (BHS == true)
          ? "Butik"
          : (English == true)
              ? "Boutique"
              : "Boutique"
    },
    {
      "name": "Marta",
      "image": 'https://photos.novitravnik.online/samoposluga/marta.png',
      "lat": 44.17649651816336,
      "lng": 17.6630164612079,
      "distance": 0,
      "navigation": Marta(),
      "opis": (BHS == true)
          ? "Cvjećarnica"
          : (English == true)
              ? "Flower shop"
              : "Blumenladen"
    },
    {
      "name": "Medić",
      "image": 'https://photos.novitravnik.online/samoposluga/medic.png',
      "lat": 44.17293518083092,
      "lng": 17.662533399978788,
      "distance": 0,
      "navigation": Medic(),
      "opis": (BHS == true)
          ? "Mesnica"
          : (English == true)
              ? "Butcher shop"
              : "Metzgerei"
    },
    {
      "name": "Muzuri PJ",
      "image": 'https://photos.novitravnik.online/samoposluga/muzuri.png',
      "lat": 44.17924198933044,
      "lng": 17.667053235759397,
      "distance": 0,
      "navigation": muzuri(),
      "opis": (BHS == true)
          ? "Trgovački Centar"
          : (English == true)
              ? "Shopping Mall"
              : "Einkaufszentrum"
    },
    {
      "name": "N&A",
      "image": 'https://photos.novitravnik.online/samoposluga/n&a.png',
      "lat": 44.16869570008861,
      "lng": 17.65194536930847,
      "distance": 0,
      "navigation": nanda(),
      "opis": (BHS == true)
          ? "Butik Odjeća"
          : (English == true)
              ? "Boutique Clothing"
              : "Boutique-Kleidung"
    },
    {
      "name": "ROBOT",
      "image": 'https://photos.novitravnik.online/samoposluga/robot.png',
      "lat": 44.17622543623092,
      "lng": 17.665690716762438,
      "distance": 0,
      "navigation": Robot(),
      "opis": (BHS == true)
          ? "Trgovački Centar"
          : (English == true)
              ? "Shopping Mall"
              : "Einkaufszentrum"
    },
    {
      "name": "Ruža",
      "image": 'https://photos.novitravnik.online/samoposluga/ruza.png',
      "lat": 44.174332685969475,
      "lng": 17.66344347487986,
      "distance": 0,
      "navigation": Ruza(),
      "opis": (BHS == true)
          ? "Cvjećarnica"
          : (English == true)
              ? "Flower shop"
              : "Blumenladen"
    },
    {
      "name": "Sabelja",
      "image": 'https://photos.novitravnik.online/samoposluga/sabelja.png',
      "lat": 44.17371927357014,
      "lng": 17.658849904922644,
      "distance": 0,
      "navigation": Sabelja(),
      "opis": (BHS == true)
          ? "Prodavaonica autodijelova"
          : (English == true)
              ? "Auto parts store"
              : "Autoteile Shop"
    },
    {
      "name": "SOR AKOMP",
      "image": 'https://photos.novitravnik.online/samoposluga/sonacomp.png',
      "lat": 44.17105526316042,
      "lng": 17.642932531203236,
      "distance": 0,
      "navigation": Sorakomp(),
      "opis": (BHS == true)
          ? "Elektronička roba"
          : (English == true)
              ? "Electronic goods"
              : "Elektroartikel"
    },
    {
      "name": "SSD",
      "image": 'https://photos.novitravnik.online/samoposluga/ssd.png',
      "lat": 44.16958989596799,
      "lng": 17.653735002500138,
      "distance": 0,
      "navigation": ssd(),
      "opis": (BHS == true)
          ? "Elektronička roba"
          : (English == true)
              ? "Electronic goods"
              : "Elektroartikel"
    },
    {
      "name": "Trsat Polo",
      "image": 'https://photos.novitravnik.online/samoposluga/knjizara.png',
      "lat": 44.17123513397435,
      "lng": 17.660140188259913,
      "distance": 0,
      "navigation": Trsatpolo(),
      "opis": (BHS == true)
          ? "Knjižara"
          : (English == true)
              ? "Bookstore"
              : "Buchhandlung"
    },
  ];
}

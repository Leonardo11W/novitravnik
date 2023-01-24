import 'package:flutter/material.dart';
import 'package:novi_travnik/ostalo/banke/addikoatm.dart';
import 'package:novi_travnik/ostalo/banke/addikobanka.dart';
import 'package:novi_travnik/ostalo/banke/intesa.dart';
import 'package:novi_travnik/ostalo/banke/intesabankomat.dart';
import 'package:novi_travnik/ostalo/banke/nlbbankomat.dart';
import 'package:novi_travnik/ostalo/banke/unicredit.dart';
import 'package:novi_travnik/ostalo/banke/unicreditbankomat.dart';
import 'package:novi_travnik/ostalo/banke/unicreditbankomat2.dart';
import 'package:novi_travnik/ostalo/banke/ziraat.dart';
import 'package:novi_travnik/ostalo/dentali/dentalcentarks.dart';
import 'package:novi_travnik/ostalo/dentali/dentalm.dart';
import 'package:novi_travnik/ostalo/dentali/dentalstudio.dart';
import 'package:novi_travnik/ostalo/dentali/dusko.dart';
import 'package:novi_travnik/ostalo/dentali/medicalcentar.dart';
import 'package:novi_travnik/ostalo/dentali/ordinacija.dart';
import 'package:novi_travnik/ostalo/pumpe/eurotank.dart';
import 'package:novi_travnik/ostalo/pumpe/gric.dart';
import 'package:novi_travnik/ostalo/pumpe/ina.dart';
import 'package:novi_travnik/ostalo/pumpe/merkez.dart';
import 'package:novi_travnik/ostalo/pumpe/td.dart';
import 'package:novi_travnik/ostalo/pumpe/vidak.dart';
import 'package:novi_travnik/ostalo/saloni/cuperak.dart';
import 'package:novi_travnik/ostalo/saloni/elegant.dart';
import 'package:novi_travnik/ostalo/saloni/frizbi.dart';
import 'package:novi_travnik/ostalo/saloni/gabrijela.dart';
import 'package:novi_travnik/ostalo/saloni/keka.dart';
import 'package:novi_travnik/ostalo/saloni/lavida.dart';
import 'package:novi_travnik/ostalo/saloni/nina.dart';
import 'package:novi_travnik/ostalo/saloni/spajk.dart';
import 'package:novi_travnik/ostalo/sport/klubovi/klubovi.dart';
import 'package:novi_travnik/ostalo/sport/teretane/fitnessfamily.dart';
import 'package:novi_travnik/ostalo/sport/teretane/lugangym.dart';
import 'package:novi_travnik/ostalo/sport/teretane/lyon.dart';
import 'package:novi_travnik/ostalo/sport/teretane/spartan.dart';
import 'package:novi_travnik/ostalo/uredbe/aviva.dart';
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
import 'package:novi_travnik/ostalo/uredbe/srednjaskola.dart';
import 'package:novi_travnik/ostalo/uredbe/stop.dart';
import 'package:novi_travnik/ostalo/uredbe/telemach.dart';
import 'package:novi_travnik/ostalo/uredbe/vatrogasnidom.dart';
import 'package:novi_travnik/ostalo/uredbe/vrtic.dart';
import 'package:novi_travnik/pocetna.dart';
import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/prijevoz/raspored/novifranc.dart';
import 'package:novi_travnik/prijevoz/raspored/stanicanovi.dart';
import 'package:novi_travnik/prijevoz/raspored/travnikneradni.dart';
import 'package:novi_travnik/prijevoz/raspored/travnikradni.dart';
import 'package:novi_travnik/prijevoz/raspored/viteznedjelja.dart';
import 'package:novi_travnik/prijevoz/raspored/vitezradni.dart';
import 'package:novi_travnik/prijevoz/raspored/vitezsubota.dart';
import 'package:novi_travnik/prijevoz/stanice/stanice.dart';
import 'package:novi_travnik/prijevoz/taxi/taxi.dart';
import 'package:novi_travnik/prodavnice/kioske/duhanpromet.dart';
import 'package:novi_travnik/prodavnice/kioske/inovine1.dart';
import 'package:novi_travnik/prodavnice/kioske/inovine2.dart';
import 'package:novi_travnik/prodavnice/kioske/inovine3.dart';
import 'package:novi_travnik/prodavnice/kioske/inovine4.dart';
import 'package:novi_travnik/prodavnice/kioske/inovine5.dart';
import 'package:novi_travnik/prodavnice/kioske/inovine6.dart';
import 'package:novi_travnik/prodavnice/ljekarne/katava.dart';
import 'package:novi_travnik/prodavnice/ljekarne/lasva.dart';
import 'package:novi_travnik/prodavnice/ljekarne/ljekarna.dart';
import 'package:novi_travnik/prodavnice/ljekarne/ljekarna2.dart';
import 'package:novi_travnik/prodavnice/ljekarne/ljekarna3.dart';
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
import 'package:novi_travnik/prodavnice/pekare/mlinpek.dart';
import 'package:novi_travnik/prodavnice/pekare/pekara.dart';
import 'package:novi_travnik/prodavnice/pekare/pekaraklas.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best1.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best2.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best3.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best4.dart';
import 'package:novi_travnik/prodavnice/samoposluga/best5.dart';
import 'package:novi_travnik/prodavnice/samoposluga/konzum1.dart';
import 'package:novi_travnik/prodavnice/samoposluga/konzum2.dart';
import 'package:novi_travnik/prodavnice/samoposluga/mi-commerce.dart';
import 'package:novi_travnik/ugostiteljstvo/granita.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/aurora.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/balkan.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/blondi.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/caramela.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/code.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/cool.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/cortado.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/dallas.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/derby.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/galaksija.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/kaktus.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/lion.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/lira.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/lotos.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/picasso.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/star.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/studio.dart';
import 'package:novi_travnik/ugostiteljstvo/kafici/time.dart';
import 'package:novi_travnik/ugostiteljstvo/kokos.dart';
import 'package:novi_travnik/ugostiteljstvo/lounge/Intermezzo.dart';
import 'package:novi_travnik/ugostiteljstvo/lounge/escape.dart';
import 'package:novi_travnik/ugostiteljstvo/lounge/ice.dart';
import 'package:novi_travnik/ugostiteljstvo/mima.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/agave.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/bajra.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/buco.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/kate.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/kingodoner.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/milano.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/neslanovic.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/oskar.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/pivnica.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/raze.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/venezia.dart';
import 'package:novi_travnik/ugostiteljstvo/restorani/zeko.dart';
import 'package:novi_travnik/vijesti/centralna.dart';
import 'package:novi_travnik/vijesti/drukciji.dart';
import 'package:novi_travnik/vijesti/notra.dart';
import 'package:novi_travnik/vijesti/prognoza.dart';
import 'package:novi_travnik/vijesti/radio.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.

        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pocetna': (context) => Pocetna(),
        '/postavke': (context) => Postavke(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  List<Map<String, dynamic>> _allUsers = [
    {
      "name": "Addiko",
      "opis": (BHS == true)
          ? 'banka'
          : (English == true)
              ? "Bank"
              : "Bank"
    },
    {
      "name": "Addiko ",
      "opis": (BHS == true)
          ? "bankomat"
          : (English == true)
              ? "atm"
              : "geldautomat"
    },
    {
      "name": "Aurora",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Agave",
      "opis": (BHS == true)
          ? 'restoran'
          : (English == true)
              ? "restaurant"
              : "Restaurant"
    },
    {
      "name": "Agro trade",
      "opis": (BHS == true)
          ? 'mješovita roba'
          : (English == true)
              ? "mixed goods"
              : "gemischte Ware"
    },
    {
      "name": "Alatnica",
      "opis": (BHS == true)
          ? "alatnica"
          : (English == true)
              ? "toolbox"
              : "werkzeugkasten"
    },
    {
      "name": "Aminostore",
      "opis": (BHS == true)
          ? "prodavaonica Bilja"
          : (English == true)
              ? "herb shop"
              : "kräuterladen"
    },
    {
      "name": "Arizona",
      "opis": (BHS == true)
          ? "trgovački Centar"
          : (English == true)
              ? "shopping Mall"
              : "einkaufszentrum"
    },
    {
      "name": "AS Novi Travnik",
      "opis": (BHS == true)
          ? "autobusna stanica"
          : (English == true)
              ? "bus stop"
              : "Bushaltestelle"
    },
    {
      "name": "Aviva",
      "opis": (BHS == true)
          ? 'svadbeni salon'
          : (English == true)
              ? "bridal salon"
              : "Brautsalon"
    },
    {
      "name": "Bajra",
      "opis": (BHS == true)
          ? 'ćevabdžinica'
          : (English == true)
              ? "ćevabdžinica"
              : "ćevabdžinica"
    },
    {
      "name": "Balkan",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "BC Vidak",
      "opis": (BHS == true)
          ? 'benzinska pumpa'
          : (English == true)
              ? "gas station"
              : "tankstelle"
    },
    {
      "name": "BD-electronic",
      "opis": (BHS == true)
          ? "elektronička roba"
          : (English == true)
              ? "electronic goods"
              : "elektroartikel"
    },
    {
      "name": "Beauty Bar Gaby",
      "opis": (BHS == true)
          ? "kozmetički salon"
          : (English == true)
              ? "beauty salon"
              : "schönheitssalon"
    },
    {
      "name": "Best",
      "opis": (BHS == true)
          ? "samoposluga(kralja tvrtka)"
          : (English == true)
              ? "market(kralja tvrtka)"
              : "markt(kralja tvrtka)",
    },
    {
      "name": "Best ",
      "opis": (BHS == true)
          ? "samoposluga(trg zlatnih ljiljana)"
          : (English == true)
              ? "market(trg zlatnih ljiljana)"
              : "markt(trg zlatnih ljiljana)",
    },
    {
      "name": "Best  ",
      "opis": (BHS == true)
          ? "samoposluga(stjepana tomaševića)"
          : (English == true)
              ? "market(stjepana tomaševića)"
              : "markt(stjepana tomaševića)",
    },
    {
      "name": "Best   ",
      "opis": (BHS == true)
          ? "samoposluga(ljudevita gaja)"
          : (English == true)
              ? "market(ljudevita gaja)"
              : "markt(ljudevita gaja)",
    },
    {
      "name": "Best    ",
      "opis": (BHS == true)
          ? "samoposluga(fra marijana šunjića)"
          : (English == true)
              ? "market(fra marijana šunjića)"
              : "markt(fra marijana šunjića)",
    },
    {
      "name": "Blondi",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Buco",
      "opis": (BHS == true)
          ? 'brza hrana'
          : (English)
              ? "fast food"
              : "fastfood",
    },
    {
      "name": "Caramela",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Centralna",
      "opis": (BHS == true)
          ? "portal"
          : (English == true)
              ? "website"
              : "webseite",
    },
    {
      "name": "CM",
      "opis": (BHS == true)
          ? "prodavaonica kozmetike"
          : (English == true)
              ? "cosmetics store"
              : "kosmetikgeschäft"
    },
    {
      "name": "C.L.M.",
      "opis": (BHS == true)
          ? "prodavaonica autodijelova"
          : (English == true)
              ? "auto parts store"
              : "autoteile shop"
    },
    {
      "name": "Code",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Cool",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Cortado",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Čuperak",
      "opis": (BHS == true)
          ? "frizerski salon"
          : (English == true)
              ? "hair salon"
              : "friseur"
    },
    {
      "name": "Dallas",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Dental Centar KS",
      "opis": (BHS == true)
          ? 'dental'
          : (English)
              ? "dental"
              : "zahnmedizin",
    },
    {
      "name": "Dental M",
      "opis": (BHS == true)
          ? 'dental'
          : (English)
              ? "dental"
              : "zahnmedizin"
    },
    {
      "name": "Dental Studio",
      "opis": (BHS == true)
          ? 'dental'
          : (English)
              ? "dental"
              : "zahnmedizin"
    },
    {
      "name": "Derby",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Digitalis",
      "opis": (BHS == true)
          ? "elektronička roba"
          : (English == true)
              ? "electronic goods"
              : "elektroartikel"
    },
    {
      "name": "Dječji vrtić",
      "opis": (BHS == true)
          ? "vrtić"
          : (English == true)
              ? "kindergarten"
              : "Kindergarten"
    },
    {
      "name": "DM",
      "opis": (BHS == true)
          ? "drogerie markt"
          : (English == true)
              ? "drogerie markt"
              : "drogerie markt"
    },
    {
      "name": "Dom Kulture",
      "opis": (BHS == true)
          ? "kino"
          : (English == true)
              ? "cinema"
              : "kino"
    },
    {
      "name": "Drukčiji",
      "opis": (BHS == true)
          ? "portal"
          : (English == true)
              ? "website"
              : "webseite"
    },
    {
      "name": "Duga",
      "opis": (BHS == true)
          ? "rehabilitacijski centar"
          : (English == true)
              ? "rehabilitation center"
              : "rehabilitationszentrum"
    },
    {
      "name": "Dugatehna",
      "opis": (BHS == true)
          ? "prodavaonica boja"
          : (English == true)
              ? "paint shop"
              : "lackiererei"
    },
    {
      "name": "Duhanpromet",
      "opis": (BHS == true)
          ? "kiosk"
          : (English == true)
              ? "kiosk"
              : "kiosk"
    },
    {
      "name": "Duško Pajkić",
      "opis": (BHS == true)
          ? 'dental'
          : (English)
              ? "dental"
              : "zahnmedizin"
    },
    {
      "name": "Elegant",
      "opis": (BHS == true)
          ? "frizerski salon"
          : (English == true)
              ? "hair salon"
              : "friseur"
    },
    {
      "name": "Escape",
      "opis": (BHS == true)
          ? 'lounge'
          : (English)
              ? "lounge"
              : "lounge",
    },
    {
      "name": "Eurodom",
      "opis": (BHS == true)
          ? "građevinski materijal"
          : (English == true)
              ? "building material"
              : "baumaterial"
    },
    {
      "name": "Eurotank",
      "opis": (BHS == true)
          ? 'pumpa'
          : (English)
              ? "pump"
              : "pumpens",
    },
    {
      "name": "Fitness Family",
      "opis": (BHS == true)
          ? "teretana"
          : (English == true)
              ? "gym"
              : "turnhallen",
    },
    {
      "name": "Frizbi",
      "opis": (BHS == true)
          ? "frizerski salon"
          : (English == true)
              ? "hair salon"
              : "friseur"
    },
    {
      "name": "FTM",
      "opis": (BHS == true)
          ? 'dobavljač prozora'
          : (English == true)
              ? "window supplier"
              : "fensterlieferant"
    },
    {
      "name": "Galaksija",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Granita",
      "opis": (BHS == true)
          ? 'slastičarna'
          : (English)
              ? "confectionery"
              : "süßwaren",
    },
    {
      "name": "Grič",
      "opis": (BHS == true)
          ? 'pumpa'
          : (English)
              ? "pump"
              : "pumpens",
    },
    {
      "name": "Hari",
      "opis": (BHS == true)
          ? "trgovački centar"
          : (English == true)
              ? "shopping mall"
              : "einkaufszentrum"
    },
    {
      "name": "Hrvatska Pošta Mostar",
      "opis": (BHS == true)
          ? 'pošta'
          : (English)
              ? "post"
              : "post"
    },
    {
      "name": "HT ERONET",
      "opis": (BHS == true)
          ? 'telekomunikacijska tvrtka'
          : (English)
              ? "telecommunications company"
              : "telekommunikationsunternehmen",
    },
    {
      "name": "Ice",
      "opis": (BHS == true)
          ? 'lounge'
          : (English)
              ? "lounge"
              : "lounge",
    },
    {
      "name": "INA",
      "opis": (BHS == true)
          ? 'pumpa'
          : (English)
              ? "pump"
              : "pumpens",
    },
    {
      "name": "Intermezzo",
      "opis": (BHS == true)
          ? 'lounge'
          : (English)
              ? "lounge"
              : "lounge",
    },
    {
      "name": "Intesa Sanpaolo",
      "opis": (BHS == true)
          ? "banka"
          : (English == true)
              ? "bank"
              : "banken"
    },
    {
      "name": "Intesa Sanpaolo ",
      "opis": (BHS == true)
          ? "bankomat"
          : (English == true)
              ? "atm"
              : "geldautomat"
    },
    {
      "name": "Izbor Trgovine",
      "opis": (BHS == true)
          ? "mješovita roba"
          : (English == true)
              ? "mixed goods"
              : "gemischte ware"
    },
    {
      "name": "Inovine",
      "opis": (BHS == true)
          ? "kiosk(kralja tvrtka 18)"
          : (English == true)
              ? "kiosk(kralja tvrtka 18)"
              : "kiosk(kralja tvrtka 18)",
    },
    {
      "name": "Inovine ",
      "opis": (BHS == true)
          ? "kiosk(ive andrića)"
          : (English == true)
              ? "kiosk(ive andrića)"
              : "kiosk(ive andrića)"
    },
    {
      "name": "Inovine  ",
      "opis": (BHS == true)
          ? "kiosk(ljudevita gaja)"
          : (English == true)
              ? "kiosk(ljudevita gaja)"
              : "kiosk(ljudevita gaja)"
    },
    {
      "name": "Inovine   ",
      "opis": (BHS == true)
          ? "kiosk(kralja tvrtka 10a)"
          : (English == true)
              ? "kiosk(kralja tvrtka 10a)"
              : "kiosk(kralja tvrtka 10a)"
    },
    {
      "name": "Inovine    ",
      "opis": (BHS == true)
          ? "kiosk(mehmeda spahe)"
          : (English == true)
              ? "kiosk(mehmeda spahe)"
              : "kiosk(mehmeda spahe)"
    },
    {
      "name": "Inovine     ",
      "opis": (BHS == true)
          ? "kiosk(kalinska)"
          : (English == true)
              ? "kiosk(kalinska)"
              : "kiosk(kalinska)"
    },
    {
      "name": "Kaktus",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Katava",
      "opis": (BHS == true)
          ? "apoteka"
          : (English == true)
              ? "pharmacie"
              : "apotheken",
    },
    {
      "name": "Kantonalni Sud",
      "opis": (BHS == true)
          ? "sudnica"
          : (English == true)
              ? "courtroom"
              : "gerichtssaal"
    },
    {
      "name": "Kate",
      "opis": (BHS == true)
          ? 'brza hrana'
          : (English)
              ? "fast food"
              : "fastfood",
    },
    {
      "name": "Keka",
      "opis": (BHS == true)
          ? "frizerski salon"
          : (English == true)
              ? "gair salon"
              : "friseur"
    },
    {
      "name": "King Doner",
      "opis": (BHS == true)
          ? 'brza hrana'
          : (English)
              ? "fast food"
              : "fastfood",
    },
    {
      "name": "KK Novi Travnik",
      "opis": (BHS == true)
          ? "sportski klub"
          : (English == true)
              ? "sports club"
              : "sportclub"
    },
    {
      "name": "Klas",
      "opis": (BHS == true)
          ? "pekara"
          : (English == true)
              ? "bakeries"
              : "bäckereien",
    },
    {
      "name": "Kokos",
      "opis": (BHS == true)
          ? 'slastičarna'
          : (English)
              ? "confectionery"
              : "süßwaren",
    },
    {
      "name": "Konzum",
      "opis": (BHS == true)
          ? "samoposluga(ive andrića)"
          : (English == true)
              ? "market(ive andrića)"
              : "markt(ive andrića)",
    },
    {
      "name": "Konzum ",
      "opis": (BHS == true)
          ? "samoposluga(stjepana tomaševića)"
          : (English == true)
              ? "market(stjepana tomaševića)"
              : "markt(stjepana tomaševića)",
    },
    {
      "name": "Lašva",
      "opis": (BHS == true)
          ? "apoteka"
          : (English == true)
              ? "pharmacie"
              : "apotheken"
    },
    {
      "name": "La Diva",
      "opis": (BHS == true)
          ? "kozmetički salon"
          : (English == true)
              ? "beauty salon"
              : "schönheitssalon"
    },
    {
      "name": "Lira",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Lyon",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Lotos",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Lugan Gym",
      "opis": (BHS == true)
          ? "teretana"
          : (English == true)
              ? "gym"
              : "turnhallen",
    },
    {
      "name": "Lugan Team",
      "opis": (BHS == true)
          ? "sportski klub"
          : (English == true)
              ? "sports club"
              : "sportclub"
    },
    {
      "name": "Lujanović",
      "opis": (BHS == true)
          ? "butik"
          : (English == true)
              ? "boutique"
              : "boutique"
    },
    {
      "name": "Ljekarna Apoteka",
      "opis": (BHS == true)
          ? "apoteka"
          : (English == true)
              ? "pharmacie"
              : "apotheken"
    },
    {
      "name": "Ljekarna Apoteka ",
      "opis": (BHS == true)
          ? "apoteka"
          : (English == true)
              ? "pharmacie"
              : "apotheken"
    },
    {
      "name": "Marta",
      "opis": (BHS == true)
          ? "cvjećarnica"
          : (English == true)
              ? "flower shop"
              : "blumenladen"
    },
    {
      "name": "Medić",
      "opis": (BHS == true)
          ? "mesnica"
          : (English == true)
              ? "butcher shop"
              : "metzgerei"
    },
    {
      "name": "Medical Centar",
      "opis": (BHS == true)
          ? 'dental'
          : (English)
              ? "dental"
              : "zahnmedizin"
    },
    {
      "name": "Merkez Oil",
      "opis": (BHS == true)
          ? 'pumpa'
          : (English)
              ? "pumpa"
              : "pumpens",
    },
    {
      "name": "Muzuri PJ",
      "opis": (BHS == true)
          ? "trgovački centar"
          : (English == true)
              ? "shopping mall"
              : "einkaufszentrum"
    },
    {
      "name": "Miky-Taxi",
      "opis": (BHS == true)
          ? "taxi"
          : (English == true)
              ? "taxi"
              : "taxi"
    },
    {
      "name": "Milano",
      "opis": (BHS == true)
          ? 'restorani'
          : (English)
              ? "confectionery"
              : "süßwaren",
    },
    {
      "name": "Mima",
      "opis": (BHS == true)
          ? 'ćevabdžinica'
          : (English == true)
              ? "ćevabdžinica"
              : "ćevabdžinica"
    },
    {
      "name": "Mi-Commerce",
      "opis": (BHS == true)
          ? "samoposluga"
          : (English == true)
              ? "market"
              : "markt",
    },
    {
      "name": "Mlinpek",
      "opis": (BHS == true)
          ? "pekara"
          : (English == true)
              ? "bakeries"
              : "bäckereien",
    },
    {
      "name": "Neda Erak",
      "opis": (BHS == true)
          ? 'dental'
          : (English)
              ? "dental"
              : "zahnmedizin"
    },
    {
      "name": "Neslanović",
      "opis": (BHS == true)
          ? 'ćevabdžinica'
          : (English == true)
              ? "ćevabdžinica"
              : "ćevabdžinica"
    },
    {
      "name": "Nina",
      "opis": (BHS == true)
          ? "frizerski salon"
          : (English == true)
              ? "hair salon"
              : "friseur"
    },
    {
      "name": "NK Novi Travnik",
      "opis": (BHS == true)
          ? "sportski klub"
          : (English == true)
              ? "sports club"
              : "sportclub"
    },
    {
      "name": "NLB",
      "opis": (BHS == true)
          ? "bankomat"
          : (English == true)
              ? "atm"
              : "geldautomat"
    },
    {
      "name": "NoTra",
      "opis": (BHS == true)
          ? "portal"
          : (English == true)
              ? "website"
              : "webseite"
    },
    {
      "name": "N&A",
      "opis": (BHS == true)
          ? "butik odjeća"
          : (English == true)
              ? "boutique clothing"
              : "boutique-kleidung"
    },
    {
      "name": "Općina Novi Travnik",
      "opis": (BHS == true)
          ? "vijeće"
          : (English == true)
              ? "council"
              : "rat"
    },
    {
      "name": "Oskar",
      "opis": (BHS == true)
          ? 'restorani'
          : (English)
              ? "confectionery"
              : "süßwaren",
    },
    {
      "name": "Osnovna Glazbena Škola",
      "opis": (BHS == true)
          ? 'osnovna škola'
          : (English)
              ? "elementary school"
              : "Grundschule"
    },
    {
      "name": "Osnovna Škola Novi Travnik",
      "opis": (BHS == true)
          ? 'osnovna škola'
          : (English)
              ? "elementary school"
              : "Grundschule"
    },
    {
      "name": "Pekara",
      "opis": (BHS == true)
          ? "pekara"
          : (English == true)
              ? "bakeries"
              : "bäckereien",
    },
    {
      "name": "Picasso",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Policijska Stanica",
      "opis": (BHS == true)
          ? "policijska postaja"
          : (English == true)
              ? "police station"
              : "polizeistation"
    },
    {
      "name": "Power GYM",
      "opis": (BHS == true)
          ? "teretana"
          : (English == true)
              ? "gym"
              : "turnhallen",
    },
    {
      "name": "Pivnica",
      "opis": (BHS == true)
          ? 'restorani'
          : (English)
              ? "confectionery"
              : "süßwaren",
    },
    {"name": "Prijevoz Mulić", "opis": "taxi"},
    {
      "name": "Prognoza",
      "opis": (BHS == true)
          ? 'prognoza'
          : (English)
              ? "forecast"
              : "prognose"
    },
    {
      "name": "PZU",
      "opis": (BHS == true)
          ? "apoteka"
          : (English == true)
              ? "pharmacie"
              : "apotheken"
    },
    {"name": "Radio", "opis": "drukčiji radio"},
    {
      "name": "Raze",
      "opis": (BHS == true)
          ? 'ćevabdžinica'
          : (English == true)
              ? "ćevabdžinica"
              : "ćevabdžinica"
    },
    {
      "name": "Robot",
      "opis": (BHS == true)
          ? "trgovački centar"
          : (English == true)
              ? "shopping Mmall"
              : "einkaufszentrum"
    },
    {
      "name": "Ruža",
      "opis": (BHS == true)
          ? "cvjećarnica"
          : (English == true)
              ? "flower shop"
              : "blumenladen"
    },
    {
      "name": "Sabelja",
      "opis": (BHS == true)
          ? "prodavaonica autodijelova"
          : (English == true)
              ? "auto parts store"
              : "autoteile shop"
    },
    {
      "name": "Spartan Fitness",
      "opis": (BHS == true)
          ? "teretana"
          : (English == true)
              ? "gym"
              : "turnhallen",
    },
    {
      "name": "Spyk",
      "opis": (BHS == true)
          ? "frizerski salon"
          : (English == true)
              ? "hair salon"
              : "friseur"
    },
    {
      "name": "Srednja Škola Novi Travnik",
      "opis": (BHS == true)
          ? "srednja škola"
          : (English == true)
              ? "high school"
              : "weiterführende schule"
    },
    {
      "name": "Sor Akomp",
      "opis": (BHS == true)
          ? "elektronička roba"
          : (English == true)
              ? "electronic goods"
              : "elektroartikel"
    },
    {
      "name": "SSD",
      "opis": (BHS == true)
          ? "elektronička roba"
          : (English == true)
              ? "electronic goods"
              : "elektroartikel"
    },
    {
      "name": "Stajališta",
      "opis": (BHS == true)
          ? 'autobusna stajališta'
          : (English == true)
              ? "bus stop"
              : "bushaltestelle"
    },
    {
      "name": "Stanica Novi-Vitez",
      "opis": (BHS == true)
          ? 'autobusna stanica'
          : (English == true)
              ? "bus stop"
              : "Bushaltestelle"
    },
    {
      "name": "Star",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "STOP",
      "opis": (BHS == true)
          ? "autoškola"
          : (English == true)
              ? "driving school"
              : "fahrschule"
    },
    {
      "name": "Studio",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {"name": "Taxi", "opis": "taxi"},
    {
      "name": "TD",
      "opis": (BHS == true)
          ? 'pumpa'
          : (English)
              ? "pump"
              : "pumpens",
    },
    {
      "name": "Telemach",
      "opis": (BHS == true)
          ? 'pružanje usluga kabelske televizije'
          : (English == true)
              ? "provision of cable television services"
              : "bereitstellung von kabelfernsehdiensten"
    },
    {
      "name": "Time",
      "opis": (BHS == true)
          ? 'kafić'
          : (English == true)
              ? "coffee shop"
              : "café"
    },
    {
      "name": "Trsat Polo",
      "opis": (BHS == true)
          ? "knjižara"
          : (English == true)
              ? "bookstore"
              : "buchhandlung"
    },
    {
      "name": "Travnik Prijevoz(Radni dan)",
      "opis": (BHS == true)
          ? "raspored autobusa"
          : (English == true)
              ? "bus schedule"
              : "busfahrplan"
    },
    {
      "name": "Travnik Prijevoz(Subota)",
      "opis": (BHS == true)
          ? "raspored autobusa"
          : (English == true)
              ? "bus schedule"
              : "busfahrplan"
    },
    {
      "name": "Travnik Prijevoz(Nedjelja)",
      "opis": (BHS == true)
          ? "raspored autobusa"
          : (English == true)
              ? "bus schedule"
              : "busfahrplan"
    },
    {
      "name": "Unicredit",
      "opis": (BHS == true)
          ? "banka"
          : (English == true)
              ? "bank"
              : "banken"
    },
    {
      "name": "Unicredit ",
      "opis": (BHS == true)
          ? "bankomat"
          : (English == true)
              ? "atm"
              : "geldautomat"
    },
    {
      "name": "Unicredit  ",
      "opis": (BHS == true)
          ? "bankomat"
          : (English == true)
              ? "atm"
              : "geldautomat"
    },
    {
      "name": "Vatrogasni Dom",
      "opis": (BHS == true)
          ? "vatrogasci"
          : (English == true)
              ? "firefighters"
              : "feuerwehrleute"
    },
    {
      "name": "Venezia",
      "opis": (BHS == true)
          ? 'restorani'
          : (English)
              ? "confectionery"
              : "süßwaren",
    },
    {
      "name": "Vitez Prijevoz(Radni dan)",
      "opis": (BHS == true)
          ? "raspored autobusa"
          : (English == true)
              ? "bus schedule"
              : "busfahrplan"
    },
    {
      "name": "Vitez Prijevoz(Subota)",
      "opis": (BHS == true)
          ? "raspored autobusa"
          : (English == true)
              ? "bus schedule"
              : "busfahrplan"
    },
    {
      "name": "Vitez Prijevoz(Nedjelja)",
      "opis": (BHS == true)
          ? "raspored autobusa"
          : (English == true)
              ? "bus schedule"
              : "busfahrplan"
    },
    {
      "name": "Zeko",
      "opis": (BHS == true)
          ? 'restorani'
          : (English)
              ? "confectionery"
              : "süßwaren",
    },
    {
      "name": "Ziraat",
      "opis": (BHS == true)
          ? "bankomat"
          : (English == true)
              ? "atm"
              : "geldautomat"
    },
    {
      "name": "ŽOK Libero",
      "opis": (BHS == true)
          ? "sportski klub"
          : (English == true)
              ? "sports club"
              : "sportclub"
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Click == false) ? Colors.black : Colors.blue,
        centerTitle: true,
        title: const Text('Search'),
      ),
      body: Scaffold(
        backgroundColor: (Click == false) ? Colors.black : Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                style: TextStyle(
                  color: (Click == false) ? Colors.white : Colors.black,
                ),
                onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(
                        color: (Click == false) ? Colors.white : Colors.black,
                        fontSize: 20),
                    suffixIcon: Icon(
                      Icons.search,
                      color: (Click == false) ? Colors.white : Colors.black,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: _foundUsers.isNotEmpty
                      ? ListView.builder(
                          itemCount: _foundUsers.length,
                          itemBuilder: (context, index) => Card(
                              key: ValueKey(_foundUsers[index]["id"]),
                              color: Colors.blue,
                              elevation: 4,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: InkWell(
                                onTap: () {
                                  if (_foundUsers[index]['name'] == "Addiko") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Addikobanka()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Addiko ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => addikoatm()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Aurora") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aurora()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Agave") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Agave()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Agro Trade") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Agrotrade()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Alatnica") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Alatnica()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Aminostore") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Aminostore()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Arizona") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Arizona()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "AS Novi Travnik") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Stanicanovi()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Aviva") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aviva()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Bajra") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Bajra()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Balkan") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Balkan()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "BC Vidak") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Vidak()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "BD-electronic") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BDElectronic()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Beauty Bar Gaby") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Gabrijela()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Best") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Best1()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Best ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Best2()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Best  ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Best3()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Best   ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Best4()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Best    ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Best5()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Blondi") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Blondi()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Buco") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Buco()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Caramela") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Caramela()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Centralna") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Centralna()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "CM") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cm()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "C.L.M.") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => clm()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Code") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Code()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Cool") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cool()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Cortado") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cortado()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Čuperak") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cuperak()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Dallas") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Dallas()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Dental Centar KS") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DentalCentarKS()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Dental M") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DentalMirza()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Dental Studio") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DentalStudio()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Derby") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Derby()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Digitalis") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Digitalis()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Dječji vrtić") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Djecjivrtic()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "DM") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => dm()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Dom Kulture") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Domkulture()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Drukčiji") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Drukciji()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Duga") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Duga()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Dugatehna") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Dugatehna()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Duhanpromet") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Duhanpromet()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Duško Pajkić") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Dusko()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Elegant") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Elegant()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Escape") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Escape()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Eurodom") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Eurodom()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Eurotank") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Eurotank()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Fitness Family") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FitnessFamily()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "Frizbi") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Frizbi()));
                                  } else if (_foundUsers[index]['name'] ==
                                      "FTM") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => FTM()));
                                  } else if (_foundUsers[index]['name'] == "Galaksija") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Galaksija()));
                                  } else if (_foundUsers[index]['name'] == "Stanica Novi-Vitez") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Novifranc()));
                                  } else if (_foundUsers[index]['name'] == "Granita") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Granita()));
                                  } else if (_foundUsers[index]['name'] == "Grič") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Gric()));
                                  } else if (_foundUsers[index]['name'] == "Hari") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Hari()));
                                  } else if (_foundUsers[index]['name'] == "Hrvatska Pošta Mostar") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Postamostar()));
                                  } else if (_foundUsers[index]['name'] == "HT ERONET") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Hteronet()));
                                  } else if (_foundUsers[index]['name'] == "Ice") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Ice()));
                                  } else if (_foundUsers[index]['name'] == "INA") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Ina()));
                                  } else if (_foundUsers[index]['name'] == "Intermezzo") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Intermezzo()));
                                  } else if (_foundUsers[index]['name'] == "Intesa Sanpaolo") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Intesa()));
                                  } else if (_foundUsers[index]['name'] == "Intesa Sanpaolo ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Intesa2()));
                                  } else if (_foundUsers[index]['name'] == "Izbor Trgovine") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Izbortrgovine()));
                                  } else if (_foundUsers[index]['name'] == "Inovine") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Inovine1()));
                                  } else if (_foundUsers[index]['name'] == "Inovine ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Inovine2()));
                                  } else if (_foundUsers[index]['name'] == "Inovine  ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Inovine3()));
                                  } else if (_foundUsers[index]['name'] == "Inovine   ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Inovine4()));
                                  } else if (_foundUsers[index]['name'] == "Inovine    ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Inovine5()));
                                  } else if (_foundUsers[index]['name'] == "Inovine     ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Inovine6()));
                                  } else if (_foundUsers[index]['name'] == "Kaktus") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Kaktus()));
                                  } else if (_foundUsers[index]['name'] == "Katava") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Katava()));
                                  } else if (_foundUsers[index]['name'] == "Kantonalni Sud") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                KantonalniSud()));
                                  } else if (_foundUsers[index]['name'] == "Kate") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Kate()));
                                  } else if (_foundUsers[index]['name'] == "Keka") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Keka()));
                                  } else if (_foundUsers[index]['name'] == "King Doner") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Kingdoner()));
                                  } else if (_foundUsers[index]['name'] == "KK Novi Travnik") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Klubovi()));
                                  } else if (_foundUsers[index]['name'] == "Klas") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Klas()));
                                  } else if (_foundUsers[index]['name'] == "Kokos") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Kokos()));
                                  } else if (_foundUsers[index]['name'] == "Konzum") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Konzum1()));
                                  } else if (_foundUsers[index]['name'] == "Konzum ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Konzum2()));
                                  } else if (_foundUsers[index]['name'] == "La Diva") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LaDiva()));
                                  } else if (_foundUsers[index]['name'] == "Lira") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Lira()));
                                  } else if (_foundUsers[index]['name'] == "Lyon") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Lion()));
                                  } else if (_foundUsers[index]['name'] == "Lotos") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Lotos()));
                                  } else if (_foundUsers[index]['name'] == "Lugan Gym") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LuganGym()));
                                  } else if (_foundUsers[index]['name'] == "Lugan Team") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Klubovi()));
                                  } else if (_foundUsers[index]['name'] == "Lujanović") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Lujanovic()));
                                  } else if (_foundUsers[index]['name'] == "Lašva") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Lasva()));
                                  } else if (_foundUsers[index]['name'] == "Ljekarna Apoteka") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Ljekarna()));
                                  } else if (_foundUsers[index]['name'] == "Ljekarna Apoteka") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Ljekarna3()));
                                  } else if (_foundUsers[index]['name'] == "Marta") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Marta()));
                                  } else if (_foundUsers[index]['name'] == "Medić") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Medic()));
                                  } else if (_foundUsers[index]['name'] == "Medical Centar") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MedicalCentar()));
                                  } else if (_foundUsers[index]['name'] == "Merkez Oil") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Merkez()));
                                  } else if (_foundUsers[index]['name'] == "Muzuri PJ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => muzuri()));
                                  } else if (_foundUsers[index]['name'] == "Miky-Taxi") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Taxi()));
                                  } else if (_foundUsers[index]['name'] == "Milano") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Milano()));
                                  } else if (_foundUsers[index]['name'] == "Mima") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Mima()));
                                  } else if (_foundUsers[index]['name'] == "Mi-Commerce") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Mikomerc()));
                                  } else if (_foundUsers[index]['name'] == "Mlinpek") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Mlinpek()));
                                  } else if (_foundUsers[index]['name'] == "Neda Erak") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Neda()));
                                  } else if (_foundUsers[index]['name'] == "Neslanović") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Neslanovic()));
                                  } else if (_foundUsers[index]['name'] == "Nina") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Nina()));
                                  } else if (_foundUsers[index]['name'] == "NK Novi Travnik") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Klubovi()));
                                  } else if (_foundUsers[index]['name'] == "NLB") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                nlbbankomat()));
                                  } else if (_foundUsers[index]['name'] == "NoTra") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Notra()));
                                  } else if (_foundUsers[index]['name'] == "N&A") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => nanda()));
                                  } else if (_foundUsers[index]['name'] == "Općina Novi Travnik") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Opcina()));
                                  } else if (_foundUsers[index]['name'] == "Oskar") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Oskar()));
                                  } else if (_foundUsers[index]['name'] == "Osnovna Glazbena Škola") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Osnovnaglazbena()));
                                  } else if (_foundUsers[index]['name'] == "Osnovna Škola Novi Travnik") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Osnovnaskola()));
                                  } else if (_foundUsers[index]['name'] == "Pekara") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Pekara()));
                                  } else if (_foundUsers[index]['name'] == "Picasso") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Picasso()));
                                  } else if (_foundUsers[index]['name'] == "Policijska Stanica") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Policijska()));
                                  } else if (_foundUsers[index]['name'] == "Power GYM") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LionGym()));
                                  } else if (_foundUsers[index]['name'] == "Pivnica") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Pivnica()));
                                  } else if (_foundUsers[index]['name'] == "Prijevoz Mulić") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Taxi()));
                                  } else if (_foundUsers[index]['name'] == "Prognoza") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Prognoza()));
                                  } else if (_foundUsers[index]['name'] == "PZU") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Ljekarna2()));
                                  } else if (_foundUsers[index]['name'] == "Radio") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Radijo()));
                                  } else if (_foundUsers[index]['name'] == "Raze") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Raze()));
                                  } else if (_foundUsers[index]['name'] == "Robot") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Robot()));
                                  } else if (_foundUsers[index]['name'] == "Ruža") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Ruza()));
                                  } else if (_foundUsers[index]['name'] == "Sabelja") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Sabelja()));
                                  } else if (_foundUsers[index]['name'] == "Spartan Fitness") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Spartan()));
                                  } else if (_foundUsers[index]['name'] == "Spyk") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Spajk()));
                                  } else if (_foundUsers[index]['name'] == "Srednja Škola Novi Travnik") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SrednjaSkola()));
                                  } else if (_foundUsers[index]['name'] == "Sor Akomp") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Sorakomp()));
                                  } else if (_foundUsers[index]['name'] == "SSD") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ssd()));
                                  } else if (_foundUsers[index]['name'] == "Stajališta") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Stanice()));
                                  } else if (_foundUsers[index]['name'] == "Star") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Star()));
                                  } else if (_foundUsers[index]['name'] == "STOP") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Stop()));
                                  } else if (_foundUsers[index]['name'] == "Studio") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Studio()));
                                  } else if (_foundUsers[index]['name'] == "Taxi") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Taxi()));
                                  } else if (_foundUsers[index]['name'] == "TD") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Td()));
                                  } else if (_foundUsers[index]['name'] == "Telemach") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Telemach()));
                                  } else if (_foundUsers[index]['name'] == "Trsat Polo") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Trsatpolo()));
                                  } else if (_foundUsers[index]['name'] == "Travnik Prijevoz(Radni dan)") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Travnikradni()));
                                  } else if (_foundUsers[index]['name'] == "Travnik Prijevoz(Subota)") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Travnikneradnisubota()));
                                  } else if (_foundUsers[index]['name'] == "Travnik Prijevoz(Nedjelja)") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Travnikradni()));
                                  } else if (_foundUsers[index]['name'] == "Time") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Time()));
                                  } else if (_foundUsers[index]['name'] == "Unicredit") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Unicredit()));
                                  } else if (_foundUsers[index]['name'] == "Unicredit ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Unicreditbankomat()));
                                  } else if (_foundUsers[index]['name'] == "Unicredit  ") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UnicreditBankomat2()));
                                  } else if (_foundUsers[index]['name'] == "Vatrogasni Dom") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Vatrogasnidom()));
                                  } else if (_foundUsers[index]['name'] == "Venezia") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Venezia()));
                                  } else if (_foundUsers[index]['name'] == "Vitez Prijevoz(Radni dan)") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Vitezradni()));
                                  } else if (_foundUsers[index]['name'] == "Vitez Prijevoz(Subota)") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Vitezsubota()));
                                  } else if (_foundUsers[index]['name'] == "Vitez Prijevoz(Nedjelja)") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Viteznedjelja()));
                                  } else if (_foundUsers[index]['name'] == "Zeko") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Zeko()));
                                  } else if (_foundUsers[index]['name'] == "Ziraat") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ziraat()));
                                  } else if (_foundUsers[index]['name'] == "ŽOK Libero") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Klubovi()));
                                  }
                                },
                                child: ListTile(
                                  title: Text(_foundUsers[index]['name'],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  subtitle: Text(
                                      '${_foundUsers[index]["opis"].toString()}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                                ),
                              )),
                        )
                      : Scaffold(
                          backgroundColor:
                              (Click == false) ? Colors.black : Colors.white,
                          body: Center(
                            child: Text(
                              'No results found',
                              style: TextStyle(
                                fontSize: 24,
                                color: (Click == false)
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: (Click == false) ? Colors.black : Colors.blue,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                tooltip: (BHS == true)
                    ? 'Nazad'
                    : (English == true)
                        ? "Back"
                        : "Geh Zurück",
                icon: ImageIcon(AssetImage('assets/logos/left-arrow (1).png')),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pocetna()));
                },
              ),
              IconButton(
                tooltip: (BHS == true)
                    ? 'Postavke'
                    : (English)
                        ? "Settings"
                        : "Einstellungen",
                icon: ImageIcon(AssetImage('assets/logos/settings.png')),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Postavke()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

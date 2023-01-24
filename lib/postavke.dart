// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:novi_travnik/pocetna.dart';
import 'package:novi_travnik/postavke/bug.dart';
import 'package:novi_travnik/postavke/dodajte.dart';
import 'package:novi_travnik/postavke/kontakt.dart';
import 'package:novi_travnik/postavke/netacno.dart';
import 'package:novi_travnik/postavke/sugestija.dart';
import 'package:novi_travnik/search.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? isTrue;
bool BHS = true;
bool English = false;
bool Deutsch = false;
bool Click = true;
bool systemSwitch = true;
bool darkSwitch = false;
ThemeMode? tthemeMode;
bool iconBool = false;
IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;
bool locationBool = false;

class Postavke extends StatefulWidget {
  @override
  _MyTestState createState() => _MyTestState();
}

// ignore: empty_constructor_bodies
class _MyTestState extends State<Postavke> {
  void requestLocationPermission() async {
    /// status can either be: granted, denied, restricted or permanentlyDenied
    var status = await Permission.location.status;

    if (status.isGranted) {
      locationBool = true;
      showDialog<String>(
          context: context,
          builder: (context) => AlertDialog(
                  title: Text((BHS == true)
                      ? "Dali ste pristup lokaciji"
                      : (English == true)
                          ? "You have given access to the location"
                          : "Sie haben Zugriff auf den Standort gewährt"),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ]));
    } else if (status.isDenied) {
      locationBool = false;
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
      if (await Permission.location.request().isGranted) {
        locationBool = true;
        // Either the permission was already granted before or the user just granted it.
        var snackBar = SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: 'On Snap!',
            message:
                'This is an example error message that will be shown in the body of snackbar!',
            contentType: ContentType.failure,
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    // You can can also directly ask the permission about its status.
    // if (await Permission.location.isRestricted) {
    //   // The OS restricts access, for example because of parental controls.
    // }
  }

  void _saveOptions() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  }

  @override
  _savebool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("Click", Click);
    await prefs.setBool("BHS", BHS);
    await prefs.setBool("English", English);
    await prefs.setBool("Deutsch", Deutsch);
    await prefs.setBool("iconBool", iconBool);
  }

  @override
  Widget build(BuildContext) {
    Future<bool> _exit() async {
      throw Navigator.of(context)
          .pushNamedAndRemoveUntil('/pocetna', (Route<dynamic> route) => false);
    }

    return WillPopScope(
        child: MaterialApp(
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.blue,
            ),
            themeMode: (iconBool == true)
                ? tthemeMode = ThemeMode.dark
                : tthemeMode = null,
            initialRoute: '/',
            routes: {
              // When navigating to the "/" route, build the FirstScreen widget.

              // When navigating to the "/second" route, build the SecondScreen widget.
              '/pocetna': (context) => Pocetna(),
              '/postavke': (context) => Postavke()
            },
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: (Click == false) ? Colors.black : Colors.white,
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                  (BHS == true)
                      ? 'Postavke'
                      : (English == true)
                          ? "Settings"
                          : "Einstellungen",
                ),
                centerTitle: true,
                backgroundColor: (Click == false) ? Colors.black : Colors.blue,
              ),
              body: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          (BHS == true)
                              ? "Tema"
                              : (English == true)
                                  ? "Theme"
                                  : "Thema",
                          style: TextStyle(
                              fontSize: 12,
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              (BHS == true)
                                  ? "Zadani način"
                                  : (English == true)
                                      ? "Default Mode"
                                      : "Standardmodus",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _savebool();
                                iconBool = !iconBool;

                                (iconBool == true)
                                    ? tthemeMode = ThemeMode.dark
                                    : tthemeMode = null;

                                systemSwitch = !systemSwitch;

                                darkSwitch
                                    ? print("Blocked")
                                    : setState(
                                        () {
                                          Click = !Click;
                                        },
                                      );
                              });
                            },
                            icon: Icon(
                              iconBool ? _iconDark : _iconLight,
                              color: (tthemeMode == ThemeMode.dark)
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        iconBool = !iconBool;

                        (iconBool == true)
                            ? tthemeMode = ThemeMode.dark
                            : tthemeMode = null;

                        systemSwitch = !systemSwitch;

                        darkSwitch
                            ? print("Blocked")
                            : setState(
                                () {
                                  Click = !Click;
                                },
                              );
                      });
                    },
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 2),
                        child: Text(
                          (BHS == true)
                              ? "Jezik"
                              : (English == true)
                                  ? "Languange"
                                  : "Sprache",
                          style: TextStyle(
                              fontSize: 12,
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              (BHS == true)
                                  ? "Izaberite Jezik"
                                  : (English == true)
                                      ? "Choose Language"
                                      : "Wähle eine Sprache",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                        IconButton(
                            onPressed: () async {
                              showDialog<String>(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        content: SingleChildScrollView(
                                          child: ListBody(children: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {
                                                  _savebool();
                                                  BHS = true;
                                                  English = false;
                                                  Deutsch = false;
                                                });
                                              },
                                              child: Text(
                                                "Bosansko/Hrvatski/Srpski",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  _savebool();

                                                  BHS = false;
                                                  English = true;
                                                  Deutsch = false;
                                                });

                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "English",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {
                                                  _savebool();
                                                  BHS = false;
                                                  English = false;
                                                  Deutsch = true;
                                                });
                                              },
                                              child: Text(
                                                "Deutsch",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            )
                                          ]),
                                        ),
                                      ));
                            },
                            icon: Image.asset((BHS == true)
                                ? "assets/logos/bosnia-and-herzegovina.png"
                                : (English == true)
                                    ? "assets/logos/united-kingdom.png"
                                    : "assets/logos/german.png"))
                      ],
                    ),
                    onTap: () async {
                      showDialog<String>(
                          context: context,
                          builder: (context) => AlertDialog(
                                content: SingleChildScrollView(
                                  child: ListBody(children: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {
                                          _savebool();
                                          BHS = true;
                                          English = false;
                                          Deutsch = false;
                                        });
                                      },
                                      child: Text(
                                        "Bosansko/Hrvatski/Srpski",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {
                                          _savebool();
                                          BHS = false;
                                          English = true;
                                          Deutsch = false;
                                        });
                                      },
                                      child: Text(
                                        "English",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {
                                          _savebool();
                                          BHS = false;
                                          English = false;
                                          Deutsch = true;
                                        });
                                      },
                                      child: Text(
                                        "Deutsch",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    )
                                  ]),
                                ),
                              ));
                    },
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 2),
                        child: Text(
                          (BHS == true)
                              ? "Lokacija"
                              : (English == true)
                                  ? "Location"
                                  : "Sprache",
                          style: TextStyle(
                              fontSize: 12,
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              (BHS == true)
                                  ? "Pristup Lokaciji"
                                  : (English == true)
                                      ? "Location Permission"
                                      : "Standortzugriff",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                      ],
                    ),
                    onTap: () async {
                      requestLocationPermission();
                    },
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 2),
                        child: Text(
                          (BHS == true)
                              ? "Ostalo"
                              : (English == true)
                                  ? "Other"
                                  : "Sonstiges",
                          style: TextStyle(
                              fontSize: 12,
                              color: (Click == false)
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              (BHS == true)
                                  ? "Prijavi nepravilnost"
                                  : (English == true)
                                      ? "Report a bug"
                                      : "Fehler melden",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bug()));
                            },
                            icon: Icon(
                              Icons.bug_report,
                              color: (tthemeMode == ThemeMode.dark)
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bug()));
                    },
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              (BHS == true)
                                  ? "Prijavi netačnu informaciju"
                                  : (English == true)
                                      ? "Report incorrect information"
                                      : "Falsche Angaben melden",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => netacno()));
                            },
                            icon: Icon(
                              Icons.cancel,
                              color: (tthemeMode == ThemeMode.dark)
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => netacno()));
                    },
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              (BHS == true)
                                  ? "Dodajte Informaciju"
                                  : (English == true)
                                      ? "Add Information"
                                      : "Information hinzufügen",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dodajte()));
                            },
                            icon: Icon(
                              Icons.info_rounded,
                              color: (tthemeMode == ThemeMode.dark)
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => dodajte()));
                    },
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              (BHS == true)
                                  ? "Sugestija"
                                  : (English == true)
                                      ? "Suggestion"
                                      : "Anregung",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => sugestija()));
                            },
                            icon: Icon(
                              Icons.settings_suggest_rounded,
                              color: (tthemeMode == ThemeMode.dark)
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sugestija()));
                    },
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              (BHS == true)
                                  ? "Kontakt"
                                  : (English == true)
                                      ? "Contact"
                                      : "Kontakt",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => kontakt()));
                            },
                            icon: Icon(
                              Icons.contact_mail_rounded,
                              color: (tthemeMode == ThemeMode.dark)
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => kontakt()));
                    },
                  ),
                ],
              ),
              bottomNavigationBar: BottomAppBar(
                color: (Click == false) ? Colors.black : Colors.blue,
                child: IconTheme(
                  data: IconThemeData(
                      color: Theme.of(context).colorScheme.onPrimary),
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
                        icon: ImageIcon(
                            AssetImage('assets/logos/left-arrow (1).png')),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/pocetna', (Route<dynamic> route) => false);
                        },
                      ),
                      IconButton(
                        tooltip: 'Pretraga',
                        icon: ImageIcon(AssetImage('assets/logos/loupe.png')),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Search()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )),
        onWillPop: _exit);
  }
}

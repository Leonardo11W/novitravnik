// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:novi_travnik/kategorije.dart';

import 'package:novi_travnik/postavke.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:novi_travnik/main.dart';
import 'package:novi_travnik/onboard/onboard_model.dart';

import 'package:novi_travnik/pocetna.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  void requestLocationPermission() async {
    /// status can either be: granted, denied, restricted or permanentlyDenied
    var status = await Permission.location.status;
    if (status.isGranted) {
      locationBool = true;
      print("Permission is granted");
    } else if (status.isDenied) {
      locationBool = false;
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
      if (await Permission.location.request().isGranted) {
        locationBool = true;
        // Either the permission was already granted before or the user just granted it.
        print("Permission was granted");
      }
    }

    // You can can also directly ask the permission about its status.
    // if (await Permission.location.isRestricted) {
    //   // The OS restricts access, for example because of parental controls.
    // }
  }

  int currentIndex = 0;
  late PageController _pageController;

  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/logos/translation.png',
      text: (BHS == true)
          ? "Jezik"
          : (English == true)
              ? "Language"
              : "Sprache",
      desc: (BHS == true)
          ? "Izaberite Jezik"
          : (English == true)
              ? "Choose Language"
              : "Sprache Wählen",
      bg: Colors.white,
      button: Colors.blue,
    ),
    OnboardModel(
      img: 'assets/logos/map.png',
      text: (BHS == true)
          ? "Lokacija"
          : (English == true)
              ? "Location"
              : "Lage",
      desc: (BHS == true)
          ? "Pristup Lokaciji"
          : (English == true)
              ? "Location Access"
              : "Standortzugriff",
      bg: Colors.white,
      button: Colors.blue,
    ),
    OnboardModel(
      img: 'assets/logos/like.png',
      text: (BHS == true)
          ? "Sve spremno :)"
          : (English == true)
              ? "All ready :)"
              : "Alles bereit :)",
      desc: "syntaxent.com",
      bg: Colors.white,
      button: Colors.blue,
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPopExit() async {
      isviewed = 1;
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: (Click == false) ? Colors.black : Colors.blue,
              title: new Text(
                (BHS == true)
                    ? "Jeste li sigurni?"
                    : (English == true)
                        ? 'Are you sure?'
                        : 'Bist du dir sicher?',
                style: TextStyle(color: Colors.white),
              ),
              content: new Text(
                (BHS == true)
                    ? "Želite li izaći iz aplikacije"
                    : (English == true)
                        ? 'Do you want to exit the App'
                        : 'Möchten Sie eine App beenden',
                style: TextStyle(color: Colors.white),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(false), //<-- SEE HERE
                  child: new Text(
                    (BHS == true)
                        ? "Ne"
                        : (English == true)
                            ? 'No'
                            : 'Nein',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () => SystemChannels.platform
                      .invokeMethod('SystemNavigator.pop'), // <-- SEE HERE
                  child: new Text(
                    (BHS == true)
                        ? "Da"
                        : (English == true)
                            ? 'Yes'
                            : 'Ja',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )) ??
          false;
    }

    Future lokacija() {
      return (showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: (Click == false) ? Colors.black : Colors.blue,
          title: new Text(
            (BHS == true)
                ? "Istaknuto otkrivanje"
                : (English == true)
                    ? 'Prominent disclosure'
                    : 'Prominente Offenlegung',
            style: TextStyle(color: Colors.white),
          ),
          content: new Text(
            (BHS == true)
                ? "Novi Travnik traži lokacijsku dozvolu za omogućavanje Google mapa i udaljenosti između lokacija(u prijevodu, aplikacija neće raditi u potpunosti).Da li se slažete sa time?"
                : (English == true)
                    ? 'Novi Travnik is asking for location permission to enable Google maps and distance between locations(in translation, the app will not work fully).Do you agree with that?'
                    : 'Novi Travnik bittet um Standorterlaubnis, um Google Maps und die Entfernung zwischen Standorten zu aktivieren(in der Übersetzung wird die App nicht vollständig funktionieren). Stimmen Sie dem zu?',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.bounceIn,
                );
                Navigator.of(context).pop();
              },
              child: new Text(
                (BHS == true)
                    ? "Ne"
                    : (English == true)
                        ? 'No'
                        : 'Nein',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.bounceIn,
                );
                requestLocationPermission();
                Navigator.of(context).pop();
              },
              child: new Text(
                (BHS == true)
                    ? "Da"
                    : (English == true)
                        ? 'Yes'
                        : 'Ja',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ));
    }

    Future<bool> funkcijaneka() async {
      isviewed = 1;
      return (await Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Pocetna())));
    }

    return WillPopScope(
        child: new Scaffold(
            backgroundColor: currentIndex % 2 == 0 ? kblue : kblue,
            appBar: AppBar(
              backgroundColor: currentIndex % 2 == 0 ? kblue : kblue,
              elevation: 0.0,
            ),
            body: (isviewed != 0)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: PageView.builder(
                        itemCount: screens.length,
                        controller: _pageController,
                        // ignore: prefer_const_constructors
                        physics: NeverScrollableScrollPhysics(),
                        onPageChanged: (int index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemBuilder: (_, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(screens[index].img),
                              Container(
                                height: 10.0,
                                child: ListView.builder(
                                  itemCount: screens.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3.0),
                                            width:
                                                currentIndex == index ? 25 : 8,
                                            height: 8,
                                            decoration: BoxDecoration(
                                              color: currentIndex == index
                                                  ? kbrown
                                                  : kbrown300,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ]);
                                  },
                                ),
                              ),
                              Text(
                                screens[index].text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  color: index % 2 == 0 ? kwhite : kwhite,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    // ignore: deprecated_member_use
                                    primary: Colors.blue),
                                onPressed: () async {
                                  if (index == 0) {
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        content: SingleChildScrollView(
                                          child: ListBody(children: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamedAndRemoveUntil(
                                                        '/onboard',
                                                        (Route<dynamic>
                                                                route) =>
                                                            false);
                                                BHS = true;
                                                English = false;
                                                Deutsch = false;
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
                                                Navigator.of(context)
                                                    .pushNamedAndRemoveUntil(
                                                        '/onboard',
                                                        (Route<dynamic>
                                                                route) =>
                                                            false);
                                                BHS = false;
                                                English = true;
                                                Deutsch = false;
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
                                                Navigator.of(context)
                                                    .pushNamedAndRemoveUntil(
                                                        '/onboard',
                                                        (Route<dynamic>
                                                                route) =>
                                                            false);
                                                BHS = false;
                                                English = false;
                                                Deutsch = true;
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
                                      ),
                                    );
                                  }
                                  if (index == 1) {
                                    lokacija();
                                  }
                                  if (index == 2) {
                                    _launchURL();
                                  }
                                },
                                child: Text(screens[index].desc,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Montserrat',
                                      color: index % 2 == 0 ? kwhite : kwhite,
                                    )),
                              ),
                              WillPopScope(
                                  child: InkWell(
                                    onTap: () async {
                                      // ignore: avoid_print
                                      print(index);
                                      if (index == screens.length - 1) {
                                        await _storeOnboardInfo();

                                        // ignore: use_build_context_synchronously
                                        Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                                '/pocetna',
                                                (Route<dynamic> route) =>
                                                    false);
                                      }

                                      (index == 1)
                                          ? lokacija()
                                          : _pageController.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.bounceIn,
                                            );
                                    },
                                    child: Container(
                                      // ignore: prefer_const_constructors
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.0, vertical: 10),
                                      decoration: BoxDecoration(
                                          color: index % 2 == 0 ? kgrey : kgrey,
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            index == 2
                                                ? Text(
                                                    "Gotovo",
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: index % 2 == 0
                                                            ? kwhite
                                                            : kwhite),
                                                  )
                                                : index == 1
                                                    ? Text(
                                                        (BHS == true)
                                                            ? "Dalje"
                                                            : (English == true)
                                                                ? "Next"
                                                                : "Neben",
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color:
                                                                index % 2 == 0
                                                                    ? kwhite
                                                                    : kwhite),
                                                      )
                                                    : Text(
                                                        (BHS == true)
                                                            ? "Dalje"
                                                            : (English == true)
                                                                ? "Next"
                                                                : "Neben",
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color:
                                                                index % 2 == 0
                                                                    ? kwhite
                                                                    : kwhite),
                                                      ),
                                            // ignore: prefer_const_constructors
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            index == 2
                                                ? Icon(
                                                    Icons.done,
                                                    color: Colors.white,
                                                  )
                                                : Icon(
                                                    Icons.arrow_forward_sharp,
                                                    color: index % 2 == 0
                                                        ? kwhite
                                                        : kwhite,
                                                  )
                                          ]),
                                    ),
                                  ),
                                  onWillPop: _onWillPopExit),
                            ],
                          );
                        }),
                  )
                : Pocetna()),
        onWillPop: _onWillPopExit);
  }
}

_launchURL() async {
  launch('https://syntaxent.com/');
}

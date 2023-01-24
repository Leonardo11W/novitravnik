import 'package:novi_travnik/kategorije.dart';
import 'package:novi_travnik/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:novi_travnik/pocetna.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:novi_travnik/postavke.dart';

int? isviewed;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  isviewed = prefs.getInt('onBoard');

  runApp((isviewed != 0) ? MyApp() : Pocetna());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    _loadData();
    super.initState();
  }

  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      Click = prefs.getBool("Click")!;
      BHS = prefs.getBool('BHS')!;
      English = prefs.getBool('English')!;
      Deutsch = prefs.getBool('Deutsch')!;
      iconBool = prefs.getBool('iconBool')!;
    });
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
                  onPressed: () =>
                      Navigator.of(context).pop(true), // <-- SEE HERE
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

    return WillPopScope(
        child: new MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: OnBoard(),
          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.

            // When navigating to the "/second" route, build the SecondScreen widget.
            '/pocetna': (context) => Pocetna(),
            '/onboard': (context) => OnBoard(),
            '/postavke': (context) => Postavke(),
          },
        ),
        onWillPop: _onWillPopExit);
  }
}

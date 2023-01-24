import 'package:flutter/material.dart';

import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/search.dart';
import 'package:novi_travnik/vijesti/portali.dart';

import 'package:webview_flutter/webview_flutter.dart';

// ignore: use_key_in_widget_constructors
class Drukciji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: (Click == false) ? Colors.black : Colors.blue,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: (Click == false) ? Colors.black : Colors.blue,
          centerTitle: true,
          title: Text("Drukciji.ba"),
        ),
        body: WebView(
          initialUrl: "https://drukciji.ba/",
          javascriptMode: JavascriptMode.unrestricted,
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
                  icon:
                      ImageIcon(AssetImage('assets/logos/left-arrow (1).png')),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  tooltip: (BHS == true)
                      ? 'Pretraga'
                      : (English == true)
                          ? "Search"
                          : "Suche",
                  icon: ImageIcon(AssetImage('assets/logos/loupe.png')),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
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
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
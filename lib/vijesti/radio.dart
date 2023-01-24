import 'package:flutter/material.dart';

import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/search.dart';
import 'package:novi_travnik/vijesti/vijesti.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: use_key_in_widget_constructors
class Radijo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: (Click == false) ? Colors.black : Colors.blue,
      home: Scaffold(
        backgroundColor: (Click == false) ? Colors.black : Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Radio"),
          backgroundColor: (Click == false) ? Colors.black : Colors.blue,
        ),
        body: Stack(
          children: <Widget>[
            Visibility(
                child: Center(
              child: CircularProgressIndicator(),
            )),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: MediaQuery.of(context).size.height / 4.1,
                width: MediaQuery.of(context).size.width / 1.0,
                child: WebView(
                  backgroundColor: Colors.white,
                  initialUrl:
                      "http://player.radioforge.com/v2/shoutcast.html?radiolink=http://185.99.0.240:9998/stream/&radiotype=shoutcast&bcolor=dd1a1a&image=http://drukciji.ba/wp-content/uploads/2017/05/mali_bijeli-png4.png&facebook=https://www.facebook.com/Drukciji&twitter=https://www.facebook.com/Drukciji&title=Druk%C4%8DijiRadio",
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ),
          ],
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


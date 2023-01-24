import 'package:flutter/material.dart';

import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/search.dart';

import 'package:webview_flutter/webview_flutter.dart';

// ignore: use_key_in_widget_constructors
class dodajte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: (Click == false) ? Colors.black : Colors.blue,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: (Click == false) ? Colors.black : Colors.blue,
          centerTitle: true,
          title: Text((BHS == true)
              ? "Dodajte Informaciju"
              : (English == true)
                  ? "Add Information"
                  : "Information hinzufügen"),
        ),
        body: WebView(
          initialUrl: "https://novitravnik.online/Usluge/",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
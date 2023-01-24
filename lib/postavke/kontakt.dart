import 'package:flutter/material.dart';

import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/search.dart';

import 'package:webview_flutter/webview_flutter.dart';

// ignore: use_key_in_widget_constructors
class kontakt extends StatelessWidget {
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
              ? "Kontakt"
              : (English == true)
                  ? "Contact"
                  : "Kontakt"),
        ),
        body: WebView(
          initialUrl: "https://syntaxent.com/",
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
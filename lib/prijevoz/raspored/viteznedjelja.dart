import 'package:flutter/material.dart';
import 'package:novi_travnik/postavke.dart';
import 'package:novi_travnik/prijevoz/raspored/novifranc.dart';
import 'package:novi_travnik/prijevoz/raspored/raspored.dart';

import 'package:novi_travnik/prijevoz/raspored/stanicavitez.dart';

import 'package:novi_travnik/search.dart';

void main() => runApp(Viteznedjelja());

class Viteznedjelja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            (BHS == true)
                ? "Nedjelja"
                : (English == true)
                    ? 'Sunday'
                    : 'Sonntag',
          )),
          backgroundColor: (Click == false) ? Colors.black : Colors.blue,
        ),
        body: const MyStatelessWidget(),
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
                  tooltip: 'Pretraga',
                  icon: ImageIcon(AssetImage('assets/logos/loupe.png')),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
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

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Click == false) ? Colors.black : Colors.white,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        (BHS == true)
                            ? 'Polazak AS NOVI'
                            : (English == true)
                                ? 'DEPARTURE AS NOVI'
                                : 'ABFAHRT AS NOVI',
                        style: TextStyle(
                            color:
                                (Click == false) ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Center(
                          child: Text(
                        '',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      )),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        (BHS == true)
                            ? 'POLAZAK AS VITEZ'
                            : (English == true)
                                ? 'DEPARTURE AS VITEZ'
                                : 'ABFAHRT AS VITEZ',
                        style: TextStyle(
                            color:
                                (Click == false) ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Novifranc()));
                        },
                        child: Center(
                          child: Text(
                              (BHS == true)
                                  ? "Pritisni za lokaciju"
                                  : (English == true)
                                      ? "Press for location"
                                      : "Lage",
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)),
                        ),
                      )),
                      DataCell(Center(child: Text(''))),
                      DataCell(InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StanicaVitez()));
                        },
                        child: Center(
                          child: Text(
                              (BHS == true)
                                  ? "Pritisni za lokaciju"
                                  : (English == true)
                                      ? "Press for location"
                                      : "Lage",
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)),
                        ),
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('7:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('8:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('8:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('9:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('9:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('10:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('10:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('11:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('11:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('12:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('12:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('13:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('13:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('14:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('14:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('15:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('15:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('16:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('16:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('17:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('17:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('18:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('18:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(
                          child: Text('19:00',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(
                          child: Text('19:30',
                              style: TextStyle(
                                  color: (Click == false)
                                      ? Colors.white
                                      : Colors.black)))),
                      DataCell(Center(child: Text(''))),
                      DataCell(Center(child: Text(''))),
                    ],
                  ),
                ],
              ))),
    );
  }
}

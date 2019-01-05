import 'package:flutter/material.dart';
import 'package:unnes_app/cardMatkul.dart';
import 'package:unnes_app/paddingJadwal.dart';
import 'package:unnes_app/cardNama.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return // DASHBOARD
        new Container(
      padding: EdgeInsets.all(10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            ' DASHBOARD',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          new cardNama(
            namaUser: 'Doddy Rizal Novianto (4611417023)',
          ),
          new Card(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                      ),
                    ),
                    new paddingJadwal(
                      hari: 'Kamis, 03 Jan 2019',
                    ),
                  ],
                ),
                new cardMatkul(
                  jam: '10.00',
                  matkul: 'Dasar-dasar flutter',
                  ruang: 'Lab-ILKOM',
                ),
                new cardMatkul(
                  jam: '13.00',
                  matkul: 'Parsing flutter',
                  ruang: 'Lab-JARKOM',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

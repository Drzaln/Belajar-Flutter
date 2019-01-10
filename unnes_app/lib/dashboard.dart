import 'package:flutter/material.dart';
import 'package:unnes_app/cardMatkul.dart';
import 'package:unnes_app/paddingJadwal.dart';
import 'package:unnes_app/cardNama.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          new CardNama(
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
                    new PaddingJadwal(
                      hari: 'Kamis, 03 Jan 2019',
                    ),
                  ],
                ),
                new CardMatkul(
                  jam: '10.00',
                  matkul: 'Dasar-dasar flutter',
                  ruang: 'Lab-ILKOM',
                ),
                new CardMatkul(
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

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:MyUnnes/cardMatkul.dart';
import 'package:MyUnnes/paddingJadwal.dart';
import 'package:MyUnnes/cardNama.dart';

class Dashboard extends StatelessWidget {
  var roundPojok = 15.0;

  @override
  Widget build(BuildContext context) {
    return new Container(
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
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(roundPojok),
                ),
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Row(
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
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                  CardMatkul(
                    jam: '15.00',
                    matkul: 'Logika Informatika',
                    ruang: 'D2-310',
                  ),
                ],
              ),
            ),
          ),
          Text(
            ' INFO',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          Info(),
        ],
      ),
    );
  }
}

class Info extends StatefulWidget {
  @override
  _InfoState createState() => new _InfoState();
}

class _InfoState extends State<Info> {
  List dataJSON;
  final roundPojok = 15.0;

  Future<String> ambildata() async {
    http.Response hasil =
        await http.get('https://ilkomunnes.000webhostapp.com/api/array/info/all/doddyrn');

    this.setState(() {
      dataJSON = jsonDecode(hasil.body);
    });
  }

  @override
  void initState() {
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(roundPojok),
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          physics: BouncingScrollPhysics(),
          itemCount: dataJSON == null ? 0 : dataJSON.length,
          itemBuilder: (context, i) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  dataJSON[i]['judul'],style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(dataJSON[i]['pesan']),
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
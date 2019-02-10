import 'package:MyUnnes/src/blocs/unnesBloc.dart';
import 'package:MyUnnes/src/models/unnesModels.dart';
import 'package:flutter/material.dart';
import 'package:MyUnnes/src/ui/cardMatkul.dart';
import 'package:MyUnnes/src/ui/paddingJadwal.dart';
import 'package:MyUnnes/src/ui/cardNama.dart';

class Dashboard extends StatelessWidget {
  final roundPojok = 15.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey('Container'),
      padding: EdgeInsets.all(10.0),
      child: Column(
        key: ValueKey('Column'),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            ' DASHBOARD',
            key: ValueKey('Text'),
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          CardNama(
            namaUser: 'Doddy Rizal Novianto (4611417023)',
          ),
          Expanded(
            key: ValueKey('Expanded'),
            child: Card(
              key: ValueKey('Card'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(roundPojok),
                ),
              ),
              child: ListView(
                key: ValueKey('ListView'),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Row(
                    key: ValueKey('Row'),
                    children: <Widget>[
                      Padding(
                        key: ValueKey('Padding'),
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                        ),
                      ),
                      PaddingJadwal(
                        hari: 'Kamis, 03 Jan 2019',
                      ),
                    ],
                  ),
                  CardMatkul(
                    jam: '10.00',
                    matkul: 'Dasar-dasar flutter',
                    ruang: 'Lab-ILKOM',
                  ),
                  CardMatkul(
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
            key: ValueKey('Text'),
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
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final roundPojok = 15.0;

  @override
  void initState() {
    bloc.fetchAllUnnes();
    super.initState();
  }

  /*@override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      key: ValueKey('Expanded'),
      child: Card(
        key: ValueKey('Card'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(roundPojok),
          ),
        ),
        child: StreamBuilder(
          key: ValueKey('StreamBuilder'),
          stream: bloc.allUnnes,
          builder: (context, AsyncSnapshot<List<Unnes>> snapshot) {
            if (snapshot.hasData) {
              return buildList(snapshot);
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return Center(
              key: ValueKey('Center'),
              child: CircularProgressIndicator(
                key: ValueKey('CircularProgressIndicator'),
                backgroundColor: Colors.yellow[700],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildList(AsyncSnapshot<List<Unnes>> snapshot) {
    return ListView.builder(
      key: ValueKey('ListView.builder'),
      padding: EdgeInsets.all(8.0),
      physics: BouncingScrollPhysics(),
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          key: ValueKey('ListTile'),
          contentPadding: EdgeInsets.all(8.0),
          title: Text(
              snapshot.data[index].judul,
              key: ValueKey('Text'),
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          subtitle: Text(
              snapshot.data[index].pesan,
              key: ValueKey('Text'),
              style: TextStyle(fontSize: 12.0, color: Colors.black),
            ),
        );
      },
    );
  }
}
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
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final roundPojok = 15.0;

  @override
  void initState() {
    bloc.fetchAllUnnes();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
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
        child: StreamBuilder(
          stream: bloc.allUnnes,
          builder: (context, AsyncSnapshot<List<Unnes>> snapshot) {
            if (snapshot.hasData) {
              return buildList(snapshot);
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  Widget buildList(AsyncSnapshot<List<Unnes>> snapshot) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5.0,top: 16.0),
            child: Text(
              snapshot.data[index].judul,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Text(
            snapshot.data[index].pesan,
            style: TextStyle(fontSize: 12.0, color: Colors.black),
          ),
        );
      },
    );
  }
}

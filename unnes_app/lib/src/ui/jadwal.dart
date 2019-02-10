import 'package:MyUnnes/src/blocs/jadwalBloc.dart';
import 'package:flutter/material.dart';

class Jadwal extends StatelessWidget {
  final roundPojok = 15.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey('Container'),
      padding: EdgeInsets.all(10.0),
      child: Column(
        key: ValueKey('Column'),
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'JADWAL',
            key: ValueKey('Text'),
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          Container(
            key: ValueKey('Container'),
            width: double.infinity,
            child: Card(
              key: ValueKey('Card'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(roundPojok),
                ),
              ),
              child: Column(
                key: ValueKey('Column'),
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    key: ValueKey('Container'),
                    child: DecoratedBox(
                      key: ValueKey('DecoratedBox'),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(roundPojok),
                            topRight: Radius.circular(roundPojok),
                          )),
                      child: Padding(
                        key: ValueKey('Padding'),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'SENIN',
                          key: ValueKey('Text'),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    width: double.infinity,
                  ),
                  Container(
                    key: ValueKey('Container'),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      key: ValueKey('Column'),
                      children: <Widget>[
                        Row(
                          key: ValueKey('Row'),
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'JAM',
                              key: ValueKey('Text'),
                            ),
                            VerticalDivider(
                              key: ValueKey('VerticalDivider'),
                            ),
                            Expanded(
                              key: ValueKey('Expanded'),
                              child: Text(
                                'Pelajarasdnlasdlkwjdljalskjdlkwjdlkajsdankjafjahs',
                                key: ValueKey('Text'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Daftar extends StatefulWidget {
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  @override
  void initState() {
    bloc.fetchJadwalUnnes();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        key: ValueKey('Expanded'),
        child: StreamBuilder(
            key: ValueKey('StreamBuilder'),
            stream: bloc.allJadwal,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return buildList(snapshot);
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return Center(
                key: ValueKey('Center'),
                child: CircularProgressIndicator(
                  key: ValueKey('CircularProgressIndicator'),
                ),
              );
            }),
      ),
    );
  }

  Widget buildList(AsyncSnapshot snapshot) {}
}

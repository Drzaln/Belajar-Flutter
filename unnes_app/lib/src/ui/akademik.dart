import 'package:flutter/material.dart';

class AkademikTab extends StatelessWidget {
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
            'AKADEMIK',
            key: ValueKey('Text'),
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          SemesterJalan(
            semester: 'Semester Genap 2018/2019',
          ),
          Expanded(
            key: ValueKey('Expanded'),
            child: Padding(
              key: ValueKey('Padding'),
              padding: const EdgeInsets.only(top: 8.0),
              child: GridView.count(
                key: ValueKey('GridView.count'),
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  AkademikCard(
                    ikon: Icons.score,
                    teks: 'Transkrip Nilai',
                  ),
                  AkademikCard(
                    ikon: Icons.featured_play_list,
                    teks: 'Kehadiran',
                  ),
                  AkademikCard(
                    ikon: Icons.score,
                    teks: 'Riwayat IP',
                  ),
                  AkademikCard(
                    ikon: Icons.score,
                    teks: 'Riwayat IP',
                  ),
                  AkademikCard(
                    ikon: Icons.score,
                    teks: 'Riwayat IP',
                  ),
                  AkademikCard(
                    ikon: Icons.score,
                    teks: 'Riwayat IP',
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

class SemesterJalan extends StatelessWidget {
  SemesterJalan({this.semester});

  final String semester;

  @override
  Widget build(BuildContext context) {
    return Text(
      semester,
      key: ValueKey('Text'),
      style: TextStyle(fontSize: 12.0),
    );
  }
}

class AkademikCard extends StatelessWidget {
  AkademikCard({this.ikon, this.teks});

  final String teks;
  final ikon;
  final roundPojok = 15.0;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: ValueKey('RaisedButton'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(roundPojok),
        ),
      ),
      color: Colors.white,
      onPressed: () => {},
      highlightColor: Colors.orange,
      splashColor: Colors.yellow,
      child: Column(
        key: ValueKey('Column'),
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            ikon,
            key: ValueKey('Icon'),
            color: Colors.blue[900],
            size: 70.0,
          ),
          Center(
            key: ValueKey('Center'),
            child: Text(
              teks,
              key: ValueKey('Text'),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

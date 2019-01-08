import 'package:flutter/material.dart';

class akademik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'AKADEMIK',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
          new semesterJalan(
            semester: 'Semester Genap 2018/2019',
          ),
          Expanded(
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: <Widget>[
                akademikCard(
                  ikon: Icons.score,
                  teks: 'Transkrip Nilai',
                ),
                akademikCard(
                  ikon: Icons.featured_play_list,
                  teks: 'Kehadiran',
                ),
                akademikCard(
                  ikon: Icons.score,
                  teks: 'Riwayat IP',
                ),
                akademikCard(
                  ikon: Icons.score,
                  teks: 'Riwayat IP',
                ),
                akademikCard(
                  ikon: Icons.score,
                  teks: 'Riwayat IP',
                ),
                akademikCard(
                  ikon: Icons.score,
                  teks: 'Riwayat IP',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class semesterJalan extends StatelessWidget {
  semesterJalan({this.semester});

  final String semester;

  @override
  Widget build(BuildContext context) {
    return new Text(
      semester,
      style: TextStyle(fontSize: 12.0),
    );
  }
}

class akademikCard extends StatelessWidget {
  akademikCard({this.ikon, this.teks});

  final String teks;
  final ikon;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: FlatButton(
        onPressed: () => {},
        highlightColor: Colors.orange,
        splashColor: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              ikon,
              color: Colors.blue[900],
              size: 70.0,
            ),
            Center(
              child: Text(
                teks,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

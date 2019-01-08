import 'package:flutter/material.dart';

class akademik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: <Widget>[
                Card(
                  child: Center(child: Text('1')),
                ),
                Card(
                  child: Center(child: Text('2')),
                ),
                Card(
                  child: Center(child: Text('3')),
                ),
                Card(
                  child: Center(child: Text('4')),
                ),
                Card(
                  child: Center(child: Text('5')),
                ),
                Card(
                  child: Center(child: Text('6')),
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
    // TODO: implement build
    return new Text(
      semester,
      style: TextStyle(fontSize: 12.0),
    );
  }
}

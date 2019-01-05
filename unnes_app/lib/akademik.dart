import 'package:flutter/material.dart';

class akademik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'AKADEMIK',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: <Widget>[
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
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

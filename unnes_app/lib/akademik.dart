import 'package:flutter/material.dart';

class akademik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'AKADEMIK',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              new semesterJalan(semester: 'Semester Genap 2018/2019',),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class semesterJalan extends StatelessWidget{
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
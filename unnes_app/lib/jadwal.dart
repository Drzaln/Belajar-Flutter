import 'package:flutter/material.dart';

class jadwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[
          new Text(
            ' JADWAL',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

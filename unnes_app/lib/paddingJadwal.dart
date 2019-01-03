import 'package:flutter/material.dart';

class paddingJadwal extends StatelessWidget{
  paddingJadwal({this.hari});

  final String hari;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            hari,
            style: TextStyle(fontSize: 12, color: Colors.grey),
            textAlign: TextAlign.left,
          ),
          Text(
            'Jadwal kuliah hari ini:',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
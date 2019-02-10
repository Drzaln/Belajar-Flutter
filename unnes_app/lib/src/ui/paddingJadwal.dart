import 'package:flutter/material.dart';

class PaddingJadwal extends StatelessWidget{
  PaddingJadwal({this.hari});

  final String hari;

  @override
  Widget build(BuildContext context) {
    return new Padding(
      key: ValueKey('Padding'),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        key: ValueKey('Column'),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Jadwal kuliah hari ini:',
            key: ValueKey('Text'),
            style: TextStyle(fontSize: 12, color: Colors.grey),
            textAlign: TextAlign.left,
          ),
          Text(
            hari,
            key: ValueKey('Text'),
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
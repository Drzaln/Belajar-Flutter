import 'package:flutter/material.dart';

class CardMatkul extends StatelessWidget {
  CardMatkul({this.matkul, this.ruang, this.jam});

  final String matkul;
  final String ruang;
  final String jam;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: ValueKey('Padding'),
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Row(
        key: ValueKey('Row'),
        children: <Widget>[
          Padding(
            key: ValueKey('Padding'),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              key: ValueKey('Column'),
              children: <Widget>[
                Text(
                  jam,
                  key: ValueKey('Text'),
                ),
              ],
            ),
          ),
          Expanded(
            key: ValueKey('Expanded'),
            child: Padding(
              key: ValueKey('Padding'),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                key: ValueKey('Column'),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    matkul,
                    key: ValueKey('Text'),
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    ruang,
                    key: ValueKey('Text'),
                    style: TextStyle(color: Colors.grey, fontSize: 12),
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

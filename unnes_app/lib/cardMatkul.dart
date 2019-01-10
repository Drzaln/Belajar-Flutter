import 'package:flutter/material.dart';

class CardMatkul extends StatelessWidget{
  CardMatkul({this.matkul, this.ruang, this.jam});

  final String matkul;
  final String ruang;
  final String jam;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: new Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(jam),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    matkul,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    ruang,
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
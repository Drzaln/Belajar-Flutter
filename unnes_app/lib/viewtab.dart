import 'package:flutter/material.dart';
import 'package:unnes_app/dashboard.dart';
import 'package:unnes_app/akademik.dart';
import 'package:unnes_app/jadwal.dart';

class ViewTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TabBarView(
      children: <Widget>[
        new dashboard(),
        new akademik(),
        new jadwal(),
        new Text('Profile'),
      ],
    );
  }
}
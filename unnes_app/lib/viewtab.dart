import 'package:flutter/material.dart';
import 'package:unnes_app/dashboard.dart';
import 'package:unnes_app/akademik.dart';
import 'package:unnes_app/jadwal.dart';
import 'package:unnes_app/profil.dart';

class ViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        new Dashboard(),
        new AkademikTab(),
        new Jadwal(),
        new Profil(
          namaUser: 'Doddy Rizal Novianto',
          email: 'drzaln@students.unnes.ac.id',
          nim: '4611417023',
        ),
      ],
    );
  }
}

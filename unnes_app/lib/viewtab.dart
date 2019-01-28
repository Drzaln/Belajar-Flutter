import 'package:flutter/material.dart';
import 'package:MyUnnes/dashboard.dart';
import 'package:MyUnnes/akademik.dart';
import 'package:MyUnnes/jadwal.dart';
import 'package:MyUnnes/profil.dart';

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

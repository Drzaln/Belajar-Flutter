import 'package:flutter/material.dart';
import 'package:MyUnnes/src/ui/dashboard.dart';
import 'package:MyUnnes/src/ui/akademik.dart';
import 'package:MyUnnes/src/ui/jadwal.dart';
import 'package:MyUnnes/src/ui/profil.dart';

class ViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      key: ValueKey('TabBarView'),
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

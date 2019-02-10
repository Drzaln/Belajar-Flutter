
import 'package:MyUnnes/src/models/jadwalModels.dart';
import 'package:MyUnnes/src/models/unnesModels.dart';
import 'package:MyUnnes/src/resources/jadwalApiProvider.dart';
import 'package:MyUnnes/src/resources/unnesApiProvider.dart';
import 'dart:async';

class Repository{
  final unnesApiProvider = UnnesApiProvider();
  final jadwalApiProvider = JadwalApiProvider();

  Future<List<Unnes>> fetchAllUnnes() => unnesApiProvider.fetchUnnesList();
  Future<Jadwal> fetchJadwalUnnes() => jadwalApiProvider.fetchJadwalUnnes();
}
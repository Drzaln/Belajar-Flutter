
import 'package:MyUnnes/src/models/unnesModels.dart';
import 'package:MyUnnes/src/resources/unnesApiProvider.dart';
import 'dart:async';

class Repository{
  final unnesApiProvider = UnnesApiProvider();

  Future<List<Unnes>> fetchAllUnnes() => unnesApiProvider.fetchUnnesList();
}
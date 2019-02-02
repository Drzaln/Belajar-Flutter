import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;
import '../models/unnesModels.dart';
import 'dart:async';

class UnnesApiProvider{
  Client client = Client();
  final _url = 'https://ilkomunnes.000webhostapp.com/api/array/info/all/doddyrn';
  Future<List<Unnes>> fetchUnnesList() async {
    print('sukses');
    final response = await client.get(_url);
    if (response.statusCode == 200) {
      return compute(unnesFromJson, response.body);
    }else {
      throw Exception('Gagal dimuat!');
    }
  }
}
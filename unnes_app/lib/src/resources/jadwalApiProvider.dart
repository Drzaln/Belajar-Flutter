import 'package:MyUnnes/src/models/jadwalModels.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;

class JadwalApiProvider{
  Client client = Client();
  final _url = 'https://ilkom2017api.herokuapp.com/api/jadwal/all/doddyrn';
  Future<Jadwal> fetchJadwalUnnes() async {
    print('sukses');
    final response = await client.get(_url);
    if (response.statusCode == 200) {
      return compute(jadwalFromJson, response.body);
    }else {
      throw Exception('Gagal dimuat!');
    }
  }
}
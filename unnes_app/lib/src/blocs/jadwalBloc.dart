import 'package:MyUnnes/src/models/jadwalModels.dart';
import 'package:MyUnnes/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class JadwalBloc{
  final _repository = Repository();
  final _todoFetcher = PublishSubject<Jadwal>();
  Observable<Jadwal> get allJadwal => _todoFetcher.stream;
  fetchJadwalUnnes() async {
    Jadwal jadwal = await _repository.fetchJadwalUnnes();
    _todoFetcher.sink.add(jadwal);
  }
  dispose(){
    _todoFetcher.close();
  }
}

final bloc = JadwalBloc();
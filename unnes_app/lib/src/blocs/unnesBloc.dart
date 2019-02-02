
import 'package:MyUnnes/src/models/unnesModels.dart';
import 'package:MyUnnes/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class UnnesBloc{
  final _repository = Repository();
  final _todoFetcher = PublishSubject<List<Unnes>>();
  Observable<List<Unnes>> get allUnnes => _todoFetcher.stream;
  fetchAllUnnes() async {
    List<Unnes> unnes = await _repository.fetchAllUnnes();
    _todoFetcher.sink.add(unnes);
  }
  dispose(){
    _todoFetcher.close();
  }
}

final bloc = UnnesBloc();
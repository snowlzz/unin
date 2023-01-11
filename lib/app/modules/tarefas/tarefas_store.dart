import 'package:mobx/mobx.dart';

part 'tarefas_store.g.dart';

class TarefasStore = _TarefasStoreBase with _$TarefasStore;
abstract class _TarefasStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}
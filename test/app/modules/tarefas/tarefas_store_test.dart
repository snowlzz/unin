import 'package:flutter_test/flutter_test.dart';
import 'package:unin/app/modules/tarefas/tarefas_store.dart';
 
void main() {
  late TarefasStore store;

  setUpAll(() {
    store = TarefasStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
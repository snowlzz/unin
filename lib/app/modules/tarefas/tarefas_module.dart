import 'package:unin/app/modules/tarefas/tarefas_page.dart';
import 'package:unin/app/modules/tarefas/tarefas_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TarefasModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TarefasStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => TarefasPage()),
  ];
}

import 'package:unin/app/modules/producoes/producoes_page.dart';
import 'package:unin/app/modules/producoes/producoes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProducoesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProducoesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ProducoesPage()),
  ];
}

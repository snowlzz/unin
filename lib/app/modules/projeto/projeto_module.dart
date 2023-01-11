import 'package:unin/app/modules/projeto/projeto_page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class ProjetoModule extends Module {

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ProjetoPage()),
  ];
}

import 'package:unin/app/modules/crescimento/crescimento_page.dart';
import 'package:unin/app/modules/crescimento/crescimento_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CrescimentoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CrescimentoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CrescimentoPage()),
  ];
}

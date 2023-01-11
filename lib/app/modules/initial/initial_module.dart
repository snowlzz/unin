import 'package:unin/app/modules/initial/initial_page.dart';
import 'package:unin/app/modules/initial/initial_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitialStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => InitialPage()),
  ];
}

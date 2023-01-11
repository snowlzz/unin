import 'package:unin/app/modules/cartilha/cartilha_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CartilhaModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CartilhaPage()),
  ];
}

import 'package:unin/app/modules/profile/edit_profile/editProfile_page.dart';
import 'package:unin/app/modules/profile/edit_profile/editProfile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EditProfileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditProfileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditProfilePage()),
  ];
}

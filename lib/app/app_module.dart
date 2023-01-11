import 'package:flutter_modular/flutter_modular.dart';
import 'package:unin/app/modules/home/home_module.dart';
import 'package:unin/app/modules/home/home_store.dart';
import 'package:unin/app/modules/initial/auth/auth_store.dart';


import 'modules/initial/auth/auth_module.dart';
import 'modules/initial/initial_module.dart';
import 'modules/initial/initial_store.dart';
import 'modules/profile/edit_profile/editProfile_module.dart';
import 'modules/profile/edit_profile/editProfile_store.dart';
import 'modules/profile/profile_module.dart';
import 'modules/profile/profile_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => InitialStore()),
    Bind.lazySingleton((i) => AuthStore()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => ProfileStore()),
    Bind.lazySingleton((i) => EditProfileStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: InitialModule()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/profile', module: ProfileModule()),
    ModuleRoute('/edit', module: EditProfileModule()),
  ];

}
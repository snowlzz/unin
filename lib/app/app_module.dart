import 'package:flutter_modular/flutter_modular.dart';
import 'package:unin/app/modules/home/home_module.dart';


import 'modules/initial/auth/auth_module.dart';
import 'modules/initial/initial_module.dart';
import 'modules/profile/edit_profile/editProfile_module.dart';
import 'modules/profile/profile_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: InitialModule()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/profile', module: ProfileModule()),
    ModuleRoute('/edit', module: EditProfileModule()),
  ];

}
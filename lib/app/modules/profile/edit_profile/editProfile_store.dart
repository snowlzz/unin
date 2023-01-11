import 'package:mobx/mobx.dart';

part 'editProfile_store.g.dart';

class EditProfileStore = _EditProfileStoreBase with _$EditProfileStore;
abstract class _EditProfileStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}
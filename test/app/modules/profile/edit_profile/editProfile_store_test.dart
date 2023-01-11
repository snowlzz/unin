import 'package:flutter_test/flutter_test.dart';
import 'package:unin/app/modules/profile/edit_profile/editProfile_store.dart';
 
void main() {
  late EditProfileStore store;

  setUpAll(() {
    store = EditProfileStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:unin/app/modules/profile/edit_profile/editProfile_store.dart';

void main() {
  group('EditProfileStore', () {
    test('isKidNameValid should return false if name has less than 3 characters', () {
      final store = EditProfileStore();
      store.controllerKidName.text = 'ab';
      expect(store.isKidNameValid, false);
    });
    test('isKidNameValid should return true if name has more than or equal 3 characters', () {
      final store = EditProfileStore();
      store.controllerKidName.text = 'abc';
      expect(store.isKidNameValid, true);
    });
    test('isKidBirthValid should return false if birthdate is invalid', () {
      final store = EditProfileStore();
      store.controllerKidBirth.text = 'invalid date';
      expect(store.isKidBirthValid, false);
    });
    test('isKidBirthValid should return false if birthdate is a future date', () {
      final store = EditProfileStore();
      store.controllerKidBirth.text = '2050-01-01';
      expect(store.isKidBirthValid, false);
    });
    test('isKidBirthValid should return true if birthdate is valid', () {
      final store = EditProfileStore();
      store.controllerKidBirth.text = '1980-01-01';
      expect(store.isKidBirthValid, true);
    });
    test('isGestacionalAgeValid should return false if gestacionalAge is invalid', () {
      final store = EditProfileStore();
      store.controllerCorrectedAge.text = 'invalid date';
      expect(store.isGestacionalAgeValid, false);
    });
    test('isGestacionalAgeValid should return false if gestacionalAge is invalid', () {
      final store = EditProfileStore();
      store.controllerCorrectedAge.text = '43/6';
      expect(store.isGestacionalAgeValid, false);
    });
    test('isGestacionalAgeValid should return true if gestacionalAge is valid', () {
      final store = EditProfileStore();
      store.controllerCorrectedAge.text = '40/1';
      expect(store.isGestacionalAgeValid, true);
    });
  });
}

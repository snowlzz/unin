// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editProfile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditProfileStore on _EditProfileStoreBase, Store {
  Computed<bool>? _$isKidNameValidComputed;

  @override
  bool get isKidNameValid =>
      (_$isKidNameValidComputed ??= Computed<bool>(() => super.isKidNameValid,
              name: '_EditProfileStoreBase.isKidNameValid'))
          .value;
  Computed<bool>? _$isKidBirthValidComputed;

  @override
  bool get isKidBirthValid =>
      (_$isKidBirthValidComputed ??= Computed<bool>(() => super.isKidBirthValid,
              name: '_EditProfileStoreBase.isKidBirthValid'))
          .value;
  Computed<bool>? _$isGestacionalAgeValidComputed;

  @override
  bool get isGestacionalAgeValid => (_$isGestacionalAgeValidComputed ??=
          Computed<bool>(() => super.isGestacionalAgeValid,
              name: '_EditProfileStoreBase.isGestacionalAgeValid'))
      .value;

  late final _$controllerKidNameAtom =
      Atom(name: '_EditProfileStoreBase.controllerKidName', context: context);

  @override
  TextEditingController get controllerKidName {
    _$controllerKidNameAtom.reportRead();
    return super.controllerKidName;
  }

  @override
  set controllerKidName(TextEditingController value) {
    _$controllerKidNameAtom.reportWrite(value, super.controllerKidName, () {
      super.controllerKidName = value;
    });
  }

  late final _$controllerKidBirthAtom =
      Atom(name: '_EditProfileStoreBase.controllerKidBirth', context: context);

  @override
  TextEditingController get controllerKidBirth {
    _$controllerKidBirthAtom.reportRead();
    return super.controllerKidBirth;
  }

  @override
  set controllerKidBirth(TextEditingController value) {
    _$controllerKidBirthAtom.reportWrite(value, super.controllerKidBirth, () {
      super.controllerKidBirth = value;
    });
  }

  late final _$controllerCorrectedAgeAtom = Atom(
      name: '_EditProfileStoreBase.controllerCorrectedAge', context: context);

  @override
  TextEditingController get controllerCorrectedAge {
    _$controllerCorrectedAgeAtom.reportRead();
    return super.controllerCorrectedAge;
  }

  @override
  set controllerCorrectedAge(TextEditingController value) {
    _$controllerCorrectedAgeAtom
        .reportWrite(value, super.controllerCorrectedAge, () {
      super.controllerCorrectedAge = value;
    });
  }

  late final _$controllerGenderAtom =
      Atom(name: '_EditProfileStoreBase.controllerGender', context: context);

  @override
  TextEditingController get controllerGender {
    _$controllerGenderAtom.reportRead();
    return super.controllerGender;
  }

  @override
  set controllerGender(TextEditingController value) {
    _$controllerGenderAtom.reportWrite(value, super.controllerGender, () {
      super.controllerGender = value;
    });
  }

  late final _$idLogadoAtom =
      Atom(name: '_EditProfileStoreBase.idLogado', context: context);

  @override
  String? get idLogado {
    _$idLogadoAtom.reportRead();
    return super.idLogado;
  }

  @override
  set idLogado(String? value) {
    _$idLogadoAtom.reportWrite(value, super.idLogado, () {
      super.idLogado = value;
    });
  }

  late final _$erroAtom =
      Atom(name: '_EditProfileStoreBase.erro', context: context);

  @override
  String? get erro {
    _$erroAtom.reportRead();
    return super.erro;
  }

  @override
  set erro(String? value) {
    _$erroAtom.reportWrite(value, super.erro, () {
      super.erro = value;
    });
  }

  late final _$photoURLAtom =
      Atom(name: '_EditProfileStoreBase.photoURL', context: context);

  @override
  String get photoURL {
    _$photoURLAtom.reportRead();
    return super.photoURL;
  }

  @override
  set photoURL(String value) {
    _$photoURLAtom.reportWrite(value, super.photoURL, () {
      super.photoURL = value;
    });
  }

  late final _$_EditProfileStoreBaseActionController =
      ActionController(name: '_EditProfileStoreBase', context: context);

  @override
  dynamic calculoIdadeCrono() {
    final _$actionInfo = _$_EditProfileStoreBaseActionController.startAction(
        name: '_EditProfileStoreBase.calculoIdadeCrono');
    try {
      return super.calculoIdadeCrono();
    } finally {
      _$_EditProfileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controllerKidName: ${controllerKidName},
controllerKidBirth: ${controllerKidBirth},
controllerCorrectedAge: ${controllerCorrectedAge},
controllerGender: ${controllerGender},
idLogado: ${idLogado},
erro: ${erro},
photoURL: ${photoURL},
isKidNameValid: ${isKidNameValid},
isKidBirthValid: ${isKidBirthValid},
isGestacionalAgeValid: ${isGestacionalAgeValid}
    ''';
  }
}

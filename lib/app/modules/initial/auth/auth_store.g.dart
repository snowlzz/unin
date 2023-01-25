// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStoreBase, Store {
  late final _$userAtom = Atom(name: '_AuthStoreBase.user', context: context);

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$_authAtom = Atom(name: '_AuthStoreBase._auth', context: context);

  @override
  FirebaseAuth get _auth {
    _$_authAtom.reportRead();
    return super._auth;
  }

  @override
  set _auth(FirebaseAuth value) {
    _$_authAtom.reportWrite(value, super._auth, () {
      super._auth = value;
    });
  }

  late final _$_dbAtom = Atom(name: '_AuthStoreBase._db', context: context);

  @override
  FirebaseFirestore get _db {
    _$_dbAtom.reportRead();
    return super._db;
  }

  @override
  set _db(FirebaseFirestore value) {
    _$_dbAtom.reportWrite(value, super._db, () {
      super._db = value;
    });
  }

  late final _$controllerNameAtom =
      Atom(name: '_AuthStoreBase.controllerName', context: context);

  @override
  TextEditingController get controllerName {
    _$controllerNameAtom.reportRead();
    return super.controllerName;
  }

  @override
  set controllerName(TextEditingController value) {
    _$controllerNameAtom.reportWrite(value, super.controllerName, () {
      super.controllerName = value;
    });
  }

  late final _$controllerEmailAtom =
      Atom(name: '_AuthStoreBase.controllerEmail', context: context);

  @override
  TextEditingController get controllerEmail {
    _$controllerEmailAtom.reportRead();
    return super.controllerEmail;
  }

  @override
  set controllerEmail(TextEditingController value) {
    _$controllerEmailAtom.reportWrite(value, super.controllerEmail, () {
      super.controllerEmail = value;
    });
  }

  late final _$controllerPassAtom =
      Atom(name: '_AuthStoreBase.controllerPass', context: context);

  @override
  TextEditingController get controllerPass {
    _$controllerPassAtom.reportRead();
    return super.controllerPass;
  }

  @override
  set controllerPass(TextEditingController value) {
    _$controllerPassAtom.reportWrite(value, super.controllerPass, () {
      super.controllerPass = value;
    });
  }

  late final _$emailAtom = Atom(name: '_AuthStoreBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passAtom = Atom(name: '_AuthStoreBase.pass', context: context);

  @override
  String? get pass {
    _$passAtom.reportRead();
    return super.pass;
  }

  @override
  set pass(String? value) {
    _$passAtom.reportWrite(value, super.pass, () {
      super.pass = value;
    });
  }

  late final _$erroAtom = Atom(name: '_AuthStoreBase.erro', context: context);

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

  late final _$registerInFirebaseAsyncAction =
      AsyncAction('_AuthStoreBase.registerInFirebase', context: context);

  @override
  Future<void> registerInFirebase({String? email, String? pass}) {
    return _$registerInFirebaseAsyncAction
        .run(() => super.registerInFirebase(email: email, pass: pass));
  }

  late final _$saveDataToFirebaseAsyncAction =
      AsyncAction('_AuthStoreBase.saveDataToFirebase', context: context);

  @override
  Future<void> saveDataToFirebase() {
    return _$saveDataToFirebaseAsyncAction
        .run(() => super.saveDataToFirebase());
  }

  @override
  String toString() {
    return '''
user: ${user},
controllerName: ${controllerName},
controllerEmail: ${controllerEmail},
controllerPass: ${controllerPass},
email: ${email},
pass: ${pass},
erro: ${erro}
    ''';
  }
}

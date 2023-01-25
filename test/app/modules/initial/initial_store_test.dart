// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// import 'package:myapp/stores/initial_store.dart';

// class FirebaseAuthMock extends FirebaseAuth {
//   bool signInWithEmailAndPasswordCalled = false;

//   @override
//   Future<AuthResult> signInWithEmailAndPassword(String email, String password) async {
//     signInWithEmailAndPasswordCalled = true;
//     return Future.value(AuthResultMock());
//   }
// }

// class AuthResultMock extends AuthResult {
//   UserMock user = UserMock();
//   @override
//   User get user {
//     return user;
//   }
// }

// class UserMock extends User {
//   String uid = '123';
//   @override
//   String get uid {
//     return uid;
//   }
// }

// class ModularMock extends Mock implements Modular {}

// void main() {
//   InitialStore store;
//   FirebaseAuthMock auth;
//   ModularMock modular;

//   setUp(() {
//     auth = FirebaseAuthMock();
//     store = InitialStore();
//     store.auth = auth;
//     modular = ModularMock();
//     Modular.to = modular;
//   });

//   test('validateEmail should return error when email is invalid', () {
//     store.controllerEmail.text = 'emailinvalido';
//     store.validateEmail();
//     expect(store.erro, 'Email invalido');
//   });

//   test('signIn should call auth.signInWithEmailAndPassword', () async {
//     store.controllerEmail.text = 'valid@email.com';
//     store.controllerPass.text = 'validpassword';
//     final userModel = UserModel();
//     await store.signIn(userModel);
//     expect(auth.signInWithEmailAndPasswordCalled, true);
//   });

//   test('signIn should set loading to false after signInWithEmailAndPassword', () async {
//     store.controllerEmail.text = 'valid@email.com';
//     store.controllerPass.text = 'validpassword';
//     final userModel = UserModel();
//     await store.signIn(userModel);
//     expect(store.loading, false);
//   });

//   test('signIn should set idLogado to user.uid after signInWithEmailAndPassword', () async {
//     store.controllerEmail.text = 'valid@email.com';
//     store.controllerPass.text = 'validpassword';
//     final userModel = UserModel();
//     await store.signIn(userModel);
//     expect(store.idLogado, '123');
//   });

//   test('signIn should call Modular.to.pushReplacementNamed after signInWithEmailAndPassword', () async {
//     store.controllerEmail.text = 'valid@email.com';
//     store.controllerPass.text = 'validpassword';
//     final userModel = UserModel();
//     await store.signIn(userModel);
//     verify(Modular.to.pushReplacementNamed("/home/"));
//   });

//   test('sign

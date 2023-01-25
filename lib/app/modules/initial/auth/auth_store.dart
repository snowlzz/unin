// ignore_for_file: prefer_final_fields, library_private_types_in_public_api, use_function_type_syntax_for_parameters

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';


import '../../models/user_model.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;
abstract class _AuthStoreBase with Store {

  @observable
  UserModel user = UserModel();

  @observable
  FirebaseAuth _auth = FirebaseAuth.instance;

  @observable
  FirebaseFirestore _db = FirebaseFirestore.instance;

  @observable
  TextEditingController controllerName = TextEditingController();

  
  @observable
  TextEditingController controllerEmail = TextEditingController();
  

  @observable
  TextEditingController controllerPass = TextEditingController();

  @observable
  String? email;

  @observable
  String? pass;



  // List<ReactionDisposer> _dispose = [];

  // @action
  // void initReactions(){
  //   _dispose.add(reaction((r) => controllerEmail.text, validateEmail));
  // }




  @action
  Future<void> registerInFirebase({String? email, String? pass}) async {
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    email = controllerEmail.text;
    pass = controllerPass.text;
    
    try{
      // final model = UserModel(email: user.email, pass: user.pass);
      user.uid = _auth.currentUser!.uid;
      await _auth.createUserWithEmailAndPassword(email: email, password: pass)
      .then((value){
        saveDataToFirebase();
        Modular.to.pushReplacementNamed('/edit');
      });

    } on FirebaseAuthException catch (e){
      // erro = e.code;
      print(e.code);
      
    }
  }


  @action
  Future<void> saveDataToFirebase() async {
    user.uid = _auth.currentUser!.uid;
    user.name = controllerName.text;
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    user.registration = DateTime.now().toString();
    // idLogado = usuarioLogado.uid;
    Map<String, dynamic> data = {
      'uid' : user.uid,
      'nome mae': user.name,
      'email': user.email,
      'senha': user.pass,
      'data reg.': user.registration

    };
    _db.collection('users').doc(user.uid).set(data);
  }


  @observable
  String? erro;



}




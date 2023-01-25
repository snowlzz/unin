import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'editProfile_store.g.dart';

class EditProfileStore = _EditProfileStoreBase with _$EditProfileStore;

abstract class _EditProfileStoreBase with Store {
  @observable
  TextEditingController controllerKidName = TextEditingController();

  @computed
  bool get isKidNameValid {
    final kidName = controllerKidName.text;
    erro = 'Insira um nome valido';
    return kidName.length >= 3;
  }

  @observable
  TextEditingController controllerKidBirth = TextEditingController();

  @computed
  bool get isKidBirthValid {
    final birthDate = DateTime.tryParse(controllerKidBirth.text);
    erro = 'Insira uma data valida';
    return birthDate != null && birthDate.isBefore(DateTime.now());
  }

  @observable
  TextEditingController controllerCorrectedAge = TextEditingController();

  @computed
  bool get isGestacionalAgeValid {
    final gestacionalAge = controllerCorrectedAge.text.split("/");
    if (gestacionalAge.length != 2) return false;
    var week = int.tryParse(gestacionalAge[0]);
    var days = int.tryParse(gestacionalAge[1]);
    if (week == null || days == null) return false;
    erro = 'Insira uma data válida';
    return week >= 0 && week <= 42 && days >= 0 && days <= 6;
  }

  @observable
  TextEditingController controllerGender = TextEditingController();

  @observable
  String? idLogado;

  @observable
  String? erro;

  @observable
  String photoURL = '';

  @action
  calculoIdadeCrono() {
    var da;
    var ma;
    var aa;
    var id;
    var month;
    var dataAtual = DateTime.now();
    da = dataAtual.day;
    ma = dataAtual.month;
    aa = dataAtual.year;

    var dataNasc = controllerKidBirth.text;
    List<String> fields = dataNasc.split("/");
    int dia = int.parse(fields[0]);
    int mes = int.parse(fields[1]);
    int ano = int.parse(fields[2]);
    id = aa! - ano;
    month = ma! - mes;
    // day = da! - dia + day!;
    // month = mes;
    // day = dia! - mes;
    if (mes > ma! || (mes == ma && dia > da!)) {
      id = (id! - 1);
      month = (ma! - 1);
      // day = dia + 1;

    }

    // day = (day! - 1);
  }
}



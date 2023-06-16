import 'package:flutter/material.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/screens/home/home_view_model.dart';
import 'package:mobx/mobx.dart';
part 'signin_view_model.g.dart';

class SignInViewModel = _SignInViewModelBase with _$SignInViewModel;

abstract class _SignInViewModelBase with Store {
  final formKey = GlobalKey<FormState>();
  final PlayerModel playerModel = provider<PlayerModel>(); 

  @observable
  String? name;

  @observable
  String? position;

  @observable
  String? note;

  @observable
  String? overall;

  @observable
  String? contact;

  @observable
  String? username;

  @action
  setName(String? value){
    name = value;
  }

  @action
  String? validateRequired(String? value, String prop){
    return value != null && value.isEmpty ? '$prop é obrigatório(a)' : null;
  }

  @action
  setPosition(String? value){
    position = value;
  }

  @action
  setNote(String? value){
    note = value;
  }

  @action
  setOverall(String? value){
    overall = value;
  }

  @action
  setContact(String? value){
    contact = value;
  }

  @action
  setUsername(String? value){
    username = value;
  }

  @action
  sendForm(){
    if(formKey.currentState!.validate()){
      print('Formulário enviado com sucesso');
    }

    // PlayerModel player = PlayerModel(name: name, position: position, stars: stars, overall: overall, contact: contact, username: username);

    print('Falha no envio');
    print(name);
    
  }
}
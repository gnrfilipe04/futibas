import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:validadores/Validador.dart';
part 'auth_view_model.g.dart';

class AuthViewModel = _AuthViewModelBase with _$AuthViewModel;

abstract class _AuthViewModelBase with Store {
  final formKey = GlobalKey<FormState>();

  @observable
  String email = '';

  @observable
  String password = '';

  @action
  setEmail({required String value}) {
    email = value;
  }

  @action
  setPassword({required String value}) {
    password = value;
  }

  @action
  String? validatorEmail(String? value) {
    var errorMessage = Validador()
        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
        .add(Validar.EMAIL, msg: 'Digite um email válido')
        .valido(value);

    var messageFormatted =
        errorMessage?.replaceAll('[', '').replaceAll(']', '').split(',')[0];

    return messageFormatted;
  }

  @action
  String? validatorPass(String? value) {
    var errorMessage = Validador()
        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
        .valido(value);

    var messageFormatted =
        errorMessage?.replaceAll('[', '').replaceAll(']', '').split(',')[0];

    return messageFormatted;
  }

  @action
  onSubmit({required BuildContext context}) {
    bool isValid = formKey.currentState!.validate();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(isValid ? 'Processing Data' : 'Form is invalid')),
    );
  }

  @observable
  TapGestureRecognizer regosterRecognizer = TapGestureRecognizer()
    ..onTap = () {
      print("Terms and condition tapped");
    };
}

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'signin_view_model.g.dart';

class SignInViewModel = _SignInViewModelBase with _$SignInViewModel;

abstract class _SignInViewModelBase with Store {
  final formKey = GlobalKey<FormState>();

  @action
  sendForm(){}
}
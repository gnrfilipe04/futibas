// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthViewModel on _AuthViewModelBase, Store {
  late final _$emailAtom =
      Atom(name: '_AuthViewModelBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_AuthViewModelBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$regosterRecognizerAtom =
      Atom(name: '_AuthViewModelBase.regosterRecognizer', context: context);

  @override
  TapGestureRecognizer get regosterRecognizer {
    _$regosterRecognizerAtom.reportRead();
    return super.regosterRecognizer;
  }

  @override
  set regosterRecognizer(TapGestureRecognizer value) {
    _$regosterRecognizerAtom.reportWrite(value, super.regosterRecognizer, () {
      super.regosterRecognizer = value;
    });
  }

  late final _$_AuthViewModelBaseActionController =
      ActionController(name: '_AuthViewModelBase', context: context);

  @override
  dynamic setEmail({required String value}) {
    final _$actionInfo = _$_AuthViewModelBaseActionController.startAction(
        name: '_AuthViewModelBase.setEmail');
    try {
      return super.setEmail(value: value);
    } finally {
      _$_AuthViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword({required String value}) {
    final _$actionInfo = _$_AuthViewModelBaseActionController.startAction(
        name: '_AuthViewModelBase.setPassword');
    try {
      return super.setPassword(value: value);
    } finally {
      _$_AuthViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatorEmail(String? value) {
    final _$actionInfo = _$_AuthViewModelBaseActionController.startAction(
        name: '_AuthViewModelBase.validatorEmail');
    try {
      return super.validatorEmail(value);
    } finally {
      _$_AuthViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatorPass(String? value) {
    final _$actionInfo = _$_AuthViewModelBaseActionController.startAction(
        name: '_AuthViewModelBase.validatorPass');
    try {
      return super.validatorPass(value);
    } finally {
      _$_AuthViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toHome() {
    final _$actionInfo = _$_AuthViewModelBaseActionController.startAction(
        name: '_AuthViewModelBase.toHome');
    try {
      return super.toHome();
    } finally {
      _$_AuthViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onSubmit({required BuildContext context}) {
    final _$actionInfo = _$_AuthViewModelBaseActionController.startAction(
        name: '_AuthViewModelBase.onSubmit');
    try {
      return super.onSubmit(context: context);
    } finally {
      _$_AuthViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
regosterRecognizer: ${regosterRecognizer}
    ''';
  }
}

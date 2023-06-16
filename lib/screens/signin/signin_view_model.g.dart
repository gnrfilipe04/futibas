// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignInViewModel on _SignInViewModelBase, Store {
  late final _$nameAtom =
      Atom(name: '_SignInViewModelBase.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$positionAtom =
      Atom(name: '_SignInViewModelBase.position', context: context);

  @override
  String? get position {
    _$positionAtom.reportRead();
    return super.position;
  }

  @override
  set position(String? value) {
    _$positionAtom.reportWrite(value, super.position, () {
      super.position = value;
    });
  }

  late final _$noteAtom =
      Atom(name: '_SignInViewModelBase.note', context: context);

  @override
  String? get note {
    _$noteAtom.reportRead();
    return super.note;
  }

  @override
  set note(String? value) {
    _$noteAtom.reportWrite(value, super.note, () {
      super.note = value;
    });
  }

  late final _$overallAtom =
      Atom(name: '_SignInViewModelBase.overall', context: context);

  @override
  String? get overall {
    _$overallAtom.reportRead();
    return super.overall;
  }

  @override
  set overall(String? value) {
    _$overallAtom.reportWrite(value, super.overall, () {
      super.overall = value;
    });
  }

  late final _$contactAtom =
      Atom(name: '_SignInViewModelBase.contact', context: context);

  @override
  String? get contact {
    _$contactAtom.reportRead();
    return super.contact;
  }

  @override
  set contact(String? value) {
    _$contactAtom.reportWrite(value, super.contact, () {
      super.contact = value;
    });
  }

  late final _$usernameAtom =
      Atom(name: '_SignInViewModelBase.username', context: context);

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$_SignInViewModelBaseActionController =
      ActionController(name: '_SignInViewModelBase', context: context);

  @override
  dynamic setName(String? value) {
    final _$actionInfo = _$_SignInViewModelBaseActionController.startAction(
        name: '_SignInViewModelBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SignInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateRequired(String? value, String prop) {
    final _$actionInfo = _$_SignInViewModelBaseActionController.startAction(
        name: '_SignInViewModelBase.validateRequired');
    try {
      return super.validateRequired(value, prop);
    } finally {
      _$_SignInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPosition(String? value) {
    final _$actionInfo = _$_SignInViewModelBaseActionController.startAction(
        name: '_SignInViewModelBase.setPosition');
    try {
      return super.setPosition(value);
    } finally {
      _$_SignInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNote(String? value) {
    final _$actionInfo = _$_SignInViewModelBaseActionController.startAction(
        name: '_SignInViewModelBase.setNote');
    try {
      return super.setNote(value);
    } finally {
      _$_SignInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOverall(String? value) {
    final _$actionInfo = _$_SignInViewModelBaseActionController.startAction(
        name: '_SignInViewModelBase.setOverall');
    try {
      return super.setOverall(value);
    } finally {
      _$_SignInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setContact(String? value) {
    final _$actionInfo = _$_SignInViewModelBaseActionController.startAction(
        name: '_SignInViewModelBase.setContact');
    try {
      return super.setContact(value);
    } finally {
      _$_SignInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setUsername(String? value) {
    final _$actionInfo = _$_SignInViewModelBaseActionController.startAction(
        name: '_SignInViewModelBase.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$_SignInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic sendForm() {
    final _$actionInfo = _$_SignInViewModelBaseActionController.startAction(
        name: '_SignInViewModelBase.sendForm');
    try {
      return super.sendForm();
    } finally {
      _$_SignInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
position: ${position},
note: ${note},
overall: ${overall},
contact: ${contact},
username: ${username}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$playerFindedAtom =
      Atom(name: '_HomeViewModelBase.playerFinded', context: context);

  @override
  PlayerModel? get playerFinded {
    _$playerFindedAtom.reportRead();
    return super.playerFinded;
  }

  @override
  set playerFinded(PlayerModel? value) {
    _$playerFindedAtom.reportWrite(value, super.playerFinded, () {
      super.playerFinded = value;
    });
  }

  late final _$playerFindedStatusAtom =
      Atom(name: '_HomeViewModelBase.playerFindedStatus', context: context);

  @override
  String get playerFindedStatus {
    _$playerFindedStatusAtom.reportRead();
    return super.playerFindedStatus;
  }

  @override
  set playerFindedStatus(String value) {
    _$playerFindedStatusAtom.reportWrite(value, super.playerFindedStatus, () {
      super.playerFindedStatus = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_HomeViewModelBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$matchsAtom =
      Atom(name: '_HomeViewModelBase.matchs', context: context);

  @override
  List<MatchModel> get matchs {
    _$matchsAtom.reportRead();
    return super.matchs;
  }

  @override
  set matchs(List<MatchModel> value) {
    _$matchsAtom.reportWrite(value, super.matchs, () {
      super.matchs = value;
    });
  }

  late final _$playersAtom =
      Atom(name: '_HomeViewModelBase.players', context: context);

  @override
  List<PlayerModel> get players {
    _$playersAtom.reportRead();
    return super.players;
  }

  @override
  set players(List<PlayerModel> value) {
    _$playersAtom.reportWrite(value, super.players, () {
      super.players = value;
    });
  }

  late final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase', context: context);

  @override
  dynamic init() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.init');
    try {
      return super.init();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toNewPlayer() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.toNewPlayer');
    try {
      return super.toNewPlayer();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchNewPlayer(String? username) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.searchNewPlayer');
    try {
      return super.searchNewPlayer(username);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getPlayers() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.getPlayers');
    try {
      return super.getPlayers();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onItemTapped(int index) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.onItemTapped');
    try {
      return super.onItemTapped(index);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
playerFinded: ${playerFinded},
playerFindedStatus: ${playerFindedStatus},
selectedIndex: ${selectedIndex},
matchs: ${matchs},
players: ${players}
    ''';
  }
}

mixin _$MatchModel on _MatchModelBase, Store {
  late final _$titleAtom =
      Atom(name: '_MatchModelBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$dateAtom = Atom(name: '_MatchModelBase.date', context: context);

  @override
  DateTime get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(DateTime value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  late final _$localAtom =
      Atom(name: '_MatchModelBase.local', context: context);

  @override
  String get local {
    _$localAtom.reportRead();
    return super.local;
  }

  @override
  set local(String value) {
    _$localAtom.reportWrite(value, super.local, () {
      super.local = value;
    });
  }

  late final _$playersAtom =
      Atom(name: '_MatchModelBase.players', context: context);

  @override
  int get players {
    _$playersAtom.reportRead();
    return super.players;
  }

  @override
  set players(int value) {
    _$playersAtom.reportWrite(value, super.players, () {
      super.players = value;
    });
  }

  @override
  String toString() {
    return '''
title: ${title},
date: ${date},
local: ${local},
players: ${players}
    ''';
  }
}

mixin _$PlayerModel on _PlayerModelBase, Store {
  late final _$nameAtom = Atom(name: '_PlayerModelBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$usernameAtom =
      Atom(name: '_PlayerModelBase.username', context: context);

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$positionAtom =
      Atom(name: '_PlayerModelBase.position', context: context);

  @override
  String get position {
    _$positionAtom.reportRead();
    return super.position;
  }

  @override
  set position(String value) {
    _$positionAtom.reportWrite(value, super.position, () {
      super.position = value;
    });
  }

  late final _$starsAtom =
      Atom(name: '_PlayerModelBase.stars', context: context);

  @override
  int get stars {
    _$starsAtom.reportRead();
    return super.stars;
  }

  @override
  set stars(int value) {
    _$starsAtom.reportWrite(value, super.stars, () {
      super.stars = value;
    });
  }

  late final _$overallAtom =
      Atom(name: '_PlayerModelBase.overall', context: context);

  @override
  int get overall {
    _$overallAtom.reportRead();
    return super.overall;
  }

  @override
  set overall(int value) {
    _$overallAtom.reportWrite(value, super.overall, () {
      super.overall = value;
    });
  }

  late final _$contactAtom =
      Atom(name: '_PlayerModelBase.contact', context: context);

  @override
  int get contact {
    _$contactAtom.reportRead();
    return super.contact;
  }

  @override
  set contact(int value) {
    _$contactAtom.reportWrite(value, super.contact, () {
      super.contact = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
username: ${username},
position: ${position},
stars: ${stars},
overall: ${overall},
contact: ${contact}
    ''';
  }
}

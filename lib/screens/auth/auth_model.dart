import 'package:mobx/mobx.dart';
part 'auth_model.g.dart';

class UserModel = _UserModelBase with _$UserModel;

abstract class _UserModelBase with Store {
  _UserModelBase({
    required email,
    required name,
    required userName,
    required position,
  });
}


import 'package:mobx/mobx.dart';
part 'auth_view_model.g.dart';

class AuthViewModel = _AuthViewModelBase with _$AuthViewModel;

abstract class _AuthViewModelBase with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @action
  setEmail({ required String value}){
    email = value;
  }

  @action
  setPassword({ required String value}){
    password = value;
  }
}
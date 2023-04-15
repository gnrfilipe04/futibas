import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  
  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index){
    selectedIndex = index;
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/services/NavigationService.dart';
import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  NavigationService navigationService = provider<NavigationService>();

  @action
  init(){
    getPlayers();
  }

  @action 
  toNewPlayer(){
    return navigationService.navigateTo(routeName: 'NewPlayer');
  }

  @action
  getPlayers(){
    FirebaseFirestore.instance
        .collection('players')
        .get()
        .then((QuerySnapshot querySnapshot) {
            querySnapshot.docs.forEach((player) {
              List<PlayerModel> playersJ = [];
                playersJ.add(
                  PlayerModel(
                    name: player['name'], 
                    contact: player['contact'],
                    overall: player['overal'],
                    position: player['position'],
                    stars: player['stars'],
                    username: player['username']
                  )
                );

                players = playersJ;
                print(player.data());
            });
      });
  }

  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index){
    selectedIndex = index;
  }

  @observable
  List<MatchModel> matchs = [
    MatchModel(date: DateTime.now(), title: 'Futebol 7', local: 'AABB', players: 14),
    MatchModel(date: DateTime.now(), title: 'Futebol 7', local: 'Fut 7', players: 16),
  ]; 

  @observable
  List<PlayerModel> players = [
    PlayerModel(name: 'Filipe', contact: 996805839, overall: 75, position: 'MC', stars: 3, username: '@gnrfilipe'),
    PlayerModel(name: 'Samuel', contact: 996805839, overall: 77, position: 'MC', stars: 4, username: '@samuca'),
  ];
}

class MatchModel = _MatchModelBase with _$MatchModel;

abstract class _MatchModelBase with Store {
  
  _MatchModelBase({
    required this.title,
    required this.date,
    required this.local,
    required this.players,
  });

  @observable
  String title = '';

  @observable
  DateTime date = DateTime.now();

  @observable
  String local = '';

  @observable
  int players = 0;
}

class PlayerModel = _PlayerModelBase with _$PlayerModel;

abstract class _PlayerModelBase with Store {

  @observable
  String name = '';

  @observable
  String username = '';

  @observable
  String position = '';

  @observable
  int stars = 0;

  @observable
  int overall = 0;

  @observable
  int contact = 0;

  _PlayerModelBase({
    required this.name,
    required this.position,
    required this.stars,
    required this.overall,
    required this.contact,
    required this.username
  });

  // _PlayerModelBase.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       position = json['position'],
  //       contact = json['contact'],
  //       overall = json['overall'],
  //       stars = json['stars'],
  //       username = json['username'];

  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'position': position,
  //       'contact': contact,
  //       'overall': overall,
  //       'stars': stars,
  //       'username': username
  //     };

}
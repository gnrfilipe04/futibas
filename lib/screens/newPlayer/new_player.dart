import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/screens/home/home_view_model.dart';
import 'package:futibas/services/NavigationService.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:futibas/widgets/my_input.dart';
import 'package:futibas/widgets/my_player_card.dart';
import 'package:futibas/widgets/my_title.dart';

class NewPlayer extends StatefulWidget {
  const NewPlayer({super.key});

  @override
  State<NewPlayer> createState() => _NewPlayerState();
}

class _NewPlayerState extends State<NewPlayer> {
  NavigationService navigationService = provider<NavigationService>();
  HomeViewModel homeViewModel = provider<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => {
            homeViewModel.playerFindedStatus = '',
            homeViewModel.playerFinded = null,
            navigationService.goback()
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: MyColors.secondary,
            size: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
                child: const Icon(
              Icons.filter_alt,
              color: MyColors.secondary,
            )),
          )
        ],
      ),
      body: Observer(builder: (_) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: MyTitle(
                    fontSize: 24,
                    value: 'Adicionar jogador',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyInput(
                  placeholder: '@jogador',
                  onSend: homeViewModel.searchNewPlayer,
                ),
                const SizedBox(
                  height: 20,
                ),
                homeViewModel.playerFinded == null
                  ? Column()
                  : MyCardPlayer(
                        isAdded: false,
                        name: homeViewModel.playerFinded!.name,
                        position: homeViewModel.playerFinded!.position,
                        username: homeViewModel.playerFinded!.username,
                        overall: homeViewModel.playerFinded!.overall,
                        stars: homeViewModel.playerFinded!.stars),
                Center(
                  child: Text(homeViewModel.playerFindedStatus,
                    style: const TextStyle(
                      color: MyColors.secondary,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

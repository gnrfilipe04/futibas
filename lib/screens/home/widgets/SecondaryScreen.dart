import 'package:flutter/material.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/screens/home/home_view_model.dart';
import 'package:futibas/services/NavigationService.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:futibas/widgets/my_player_card.dart';

class SecondaryScreen extends StatefulWidget {
  const SecondaryScreen({super.key, required this.players});

  final List<PlayerModel> players;

  @override
  State<SecondaryScreen> createState() => _SecondaryScreenState();
}

class _SecondaryScreenState extends State<SecondaryScreen> {
  NavigationService navigationService = provider<NavigationService>();
  HomeViewModel homeViewModel = provider<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Seus jogadores',
                style: TextStyle(color: MyColors.secondary, fontSize: 14),
              ),
              GestureDetector(
                onTap: () => navigationService.navigateTo(routeName: 'NewPlayer'),
                child: const Icon(
                  Icons.add,
                  color: MyColors.primary,
                  size: 29,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.players.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: MyCardPlayer(
                    isAdded: true,
                    name: widget.players[index].name,
                    username: widget.players[index].username,
                    overall: widget.players[index].overall,
                    position: widget.players[index].position,
                    stars: widget.players[index].stars,
                  ),
                );
              }),
        ),
      ],
    );
  }
}
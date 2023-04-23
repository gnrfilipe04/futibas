import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/screens/home/home_view_model.dart';
import 'package:futibas/theme/my_colors.dart';

import 'widgets/PrimaryScreen.dart';
import 'widgets/SecondaryScreen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewModel homeViewModel = provider<HomeViewModel>();

  @override
  void initState() {
    homeViewModel.init();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      Observer(builder: (_) {
        return PrimaryScreen(
          matchs: homeViewModel.matchs,
        );
      }),
      Observer(builder: (_) {
        return SecondaryScreen(
          players: homeViewModel.players,
        );
      })
    ];

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 114,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset(
            'assets/Logo4x.png',
            width: 94,
            height: 24,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(
              Icons.search,
              color: MyColors.secondary,
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(
              Icons.notifications,
              color: MyColors.secondary,
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 5),
            child: Icon(
              Icons.account_circle,
              color: MyColors.darkSecondary,
              size: 29,
            ),
          ),
        ],
      ),
      body: Observer(
        builder: (_) =>
            widgetOptions.elementAt(homeViewModel.selectedIndex),
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
          backgroundColor: MyColors.dark,
          onTap: homeViewModel.onItemTapped,
          selectedItemColor: MyColors.primary,
          unselectedItemColor: MyColors.secondary,
          currentIndex: homeViewModel.selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: '')
          ],
        );
      }),
    );
  }
}

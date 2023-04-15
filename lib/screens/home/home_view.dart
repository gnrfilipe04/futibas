import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/screens/home/home_view_model.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:futibas/widgets/my_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewModel homeViewModel = provider<HomeViewModel>();

  List<Widget> widgetOptions = <Widget>[
    const PrimaryScreen(),
    const Text(
      'Index 1: Business',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
        builder: (_) => widgetOptions.elementAt(homeViewModel.selectedIndex),
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
            BottomNavigationBarItem(icon: Icon(Icons.equalizer), label: '')
          ],
        );
      }),
    );
  }
}

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({super.key});

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Suas partidas',
                style: TextStyle(color: MyColors.secondary, fontSize: 14),
              ),
              Icon(
                Icons.add,
                color: MyColors.primary,
                size: 29,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: MyCard(),
        )
      ],
    );
  }
}

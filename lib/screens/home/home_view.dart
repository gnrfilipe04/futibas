import 'package:flutter/material.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:futibas/widgets/my_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 114,
        leading: Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset('assets/Logo4x.png',
            width: 94, height: 24, ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.search, color: MyColors.secondary, size: 24,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.notifications, color: MyColors.secondary, size: 24,),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 5),
            child: Icon(Icons.account_circle, color: MyColors.darkSecondary, size: 29,),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Suas partidas', style: TextStyle(color: MyColors.secondary, fontSize: 14),),
                Icon(Icons.add, color: MyColors.primary, size: 29,),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: MyCard(),
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:futibas/screens/home/home_view_model.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:futibas/widgets/my_card.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({super.key, required this.matchs});

  final List<MatchModel> matchs;

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.matchs.length,
              itemBuilder: (context, int index) {
                return MyCard(
                  date: DateTime.now(),
                  title: widget.matchs[index].title,
                  local: widget.matchs[index].local,
                  players: widget.matchs[index].players,
                );
              }),
        )
      ],
    );
  }
}
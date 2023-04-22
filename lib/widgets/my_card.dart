import 'package:flutter/material.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:intl/intl.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.title, required this.date, required this.local, required this.players});

  final String title;
  final DateTime date;
  final String local;
  final int players;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: MyColors.darkSecondary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: MyColors.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        '${DateFormat('dd.MM.yyyy').format(date)} às ${DateFormat('HH:mm').format(date)}',
                        style: const TextStyle(color: MyColors.primary, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Icon(
                      Icons.date_range,
                      color: MyColors.primary,
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DescriptionItem(title: 'Local', description: local, icon: Image.asset('assets/Stadium.png', height: 20,),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: DescriptionItem( title: 'Jogadores', description: players.toString(), icon: Image.asset('assets/Player.png', height: 20),),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({super.key, required this.title, required this.description, required this.icon});

  final String title;
  final String description;
  final Image icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: icon,
            ),
            Text(
              title,
              style: const TextStyle(color: MyColors.secondary),
            )
          ],
        ),
        Text(
          description,
          style: const TextStyle(color: MyColors.primary, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

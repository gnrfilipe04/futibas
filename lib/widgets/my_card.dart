import 'package:flutter/material.dart';
import 'package:futibas/theme/my_colors.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

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
                const Text(
                  'Futebol 7',
                  style: TextStyle(
                      color: MyColors.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        '04.04.2023 às 20:30',
                        style: TextStyle(color: MyColors.primary, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.date_range,
                      color: MyColors.primary,
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DescriptionItem(title: 'Local', description: 'AABB', icon: Image.asset('assets/Stadium.png', height: 20,),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: DescriptionItem( title: 'Jogadores', description: '16', icon: Image.asset('assets/Player.png', height: 20),),
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

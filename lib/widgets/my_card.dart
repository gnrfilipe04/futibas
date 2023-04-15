import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:futibas/theme/my_colors.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                        style: TextStyle(color: MyColors.primary),
                      ),
                    ),
                    Icon(
                      Icons.calendar_month,
                      color: MyColors.primary,
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: DescriptionItem(title: 'Local', description: 'AABB', icon: Icons.sports_soccer,),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: DescriptionItem( title: 'Jogadores', description: '16', icon: Icons.man,),
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
  final IconData icon;

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
              child: Icon(icon, color: MyColors.secondary),
            ),
            Text(
              title,
              style: const TextStyle(color: MyColors.secondary),
            )
          ],
        ),
        Text(
          description,
          style: const TextStyle(color: MyColors.primary),
        )
      ],
    );
  }
}

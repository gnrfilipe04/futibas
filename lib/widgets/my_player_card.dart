import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:futibas/theme/my_colors.dart';

class MyCardPlayer extends StatelessWidget {
  const MyCardPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => print('User detail'),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.account_circle,
              size: 40,
              color: MyColors.darkSecondary,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Filipe',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' MC',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '@gnrfilipe04',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/Player.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '80',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemSize: 20,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: MyColors.primary,
                      ),
                      ignoreGestures: true,
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    GestureDetector(
                        onTap: () => print('Whats'),
                        child: Image.asset(
                          'assets/WhatsApp.png',
                          width: 30,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:futibas/theme/my_colors.dart';

class MyStreamMessage extends StatelessWidget {
  const MyStreamMessage({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
          style: const TextStyle(
            color: MyColors.secondary,
            fontSize: 18,
          )));
  }
}
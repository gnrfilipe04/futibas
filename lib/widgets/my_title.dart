import 'package:flutter/material.dart';
import '../theme/my_colors.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key, required this.fontSize, required this.value});

  final double fontSize;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(color: MyColors.white, fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
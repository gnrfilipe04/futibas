import 'package:flutter/material.dart';
import 'package:futibas/screens/auth/auth_view.dart';
import 'package:futibas/theme/my_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const AuthView(),
    );
  }
}
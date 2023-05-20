import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/theme/my_theme.dart';
import 'package:futibas/constants/route_paths.dart' as routes;
import 'package:futibas/router/router.dart' as router;
import '../firebase_options.dart';
import '../services/NavigationService.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      
    return MaterialApp(
      title: 'Futibas',
      theme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.SignInRoute,
      navigatorKey: provider<NavigationService>().navigatorKey,
    );
  }
}
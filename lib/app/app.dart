import 'package:flutter/material.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/theme/my_theme.dart';
import 'package:futibas/constants/route_paths.dart' as routes;
import 'package:futibas/router/router.dart' as router;

import '../services/NavigationService.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.HomeRoute,
      navigatorKey: provider<NavigationService>().navigatorKey,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:futibas/constants/route_paths.dart' as routes;
import 'package:futibas/screens/auth/auth_view.dart';
import 'package:futibas/screens/home/home_view.dart';
import 'package:futibas/screens/newPlayer/new_player.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.LoginRoute:
      return MaterialPageRoute(builder: (context) => const AuthView());
    case routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case routes.NewPlayerRoute:
      return MaterialPageRoute(builder: (context) => const NewPlayer());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(child: Text('No path for ${settings.name}')),
              ));
  }
}

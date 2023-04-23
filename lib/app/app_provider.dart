import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futibas/screens/auth/auth_view_model.dart';
import 'package:futibas/screens/home/home_view_model.dart';
import 'package:futibas/services/FirebaseService.dart';
import 'package:futibas/services/NavigationService.dart';
import 'package:get_it/get_it.dart';

GetIt provider = GetIt.instance;

Future<void> setupProvider() async {
  provider.registerLazySingleton(() => NavigationService());
  provider.registerLazySingleton(() => AuthViewModel());
  provider.registerLazySingleton(() => HomeViewModel());
}

Future<void> setupApp() async {

  await FirebaseService().initializeDefault();

  await setupProvider();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
}

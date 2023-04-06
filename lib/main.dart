import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futibas/app/app.dart';
import 'package:futibas/app/app_provider.dart';

void main() {
  setupProvider();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
      

  runApp(const MyApp());
}





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_colors.dart';

class MyTheme with ChangeNotifier {
  static ThemeData get darkTheme {
  var baseTheme = ThemeData.dark();
    return ThemeData(
      useMaterial3: true,
      splashFactory: NoSplash.splashFactory,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: MyColors.primary,
        foregroundColor: MyColors.dark,
      ),
      primaryColor: MyColors.primary,
      colorScheme: const ColorScheme(
        primary: MyColors.primary,
        onPrimary: MyColors.primary,
        secondary: MyColors.secondary,
        onSecondary: MyColors.secondary,
        brightness: Brightness.dark,
        error: Colors.red,
        onError: Colors.red,
        background: MyColors.dark,
        onBackground: MyColors.dark,
        surface: MyColors.primary,
        onSurface: MyColors.primary
      ),
      splashColor: MyColors.primary,
      appBarTheme: AppBarTheme(
        color: MyColors.dark,
        titleTextStyle: TextStyle(color: MyColors.secondary, fontFamily: GoogleFonts.poppins().fontFamily),
        toolbarTextStyle: const TextStyle(color: MyColors.secondary) 
      ),
      scaffoldBackgroundColor: MyColors.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: MyColors.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(color: MyColors.secondary),
        floatingLabelStyle: const TextStyle(
          color: MyColors.primary,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(width: 1, color: MyColors.secondary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(width: 1, color: MyColors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(width: 1, color: Colors.red),
        ),
      ),
    );
  }
}
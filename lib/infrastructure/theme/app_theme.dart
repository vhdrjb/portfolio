import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../presentation/src/config/app_color_scheme.dart';

class AppTheme {
  late ThemeData themeData;

  AppTheme._light()
      : themeData = ThemeData(
            colorScheme: AppColorScheme.light(),
            fontFamily: 'primary_font',
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xff474340),
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                shadowColor: Colors.transparent,
                overlayColor: Colors.transparent,
                elevation: 0
              )
            ),
            useMaterial3: true);

  AppTheme._dark()
      : themeData = ThemeData(
            colorScheme: AppColorScheme.dark(),
            textTheme: GoogleFonts.robotoTextTheme(),
            useMaterial3: true);

  factory AppTheme.theme({required Brightness brightness}) {
    if (brightness == Brightness.dark) {
      return AppTheme._dark();
    } else {
      return AppTheme._light();
    }
  }
}

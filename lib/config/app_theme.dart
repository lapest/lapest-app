import 'package:flutter/material.dart';
import 'app_config.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.light(primary: AppConfig.appColor),
    primaryColor: AppConfig.appColor,
    primarySwatch: AppConfig.greyColor,
    backgroundColor: AppConfig.blackColor,
    cardTheme: CardTheme(
      color: AppConfig.greyColor.shade900,
      elevation: 0,
    ),
    scaffoldBackgroundColor: AppConfig.blackColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppConfig.blackColor,
      elevation: 0,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppConfig.greyColor.shade900,
      titleTextStyle: const TextStyle(color: AppConfig.whiteColor),
      contentTextStyle: const TextStyle(color: AppConfig.whiteColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.defaultBorderRadius),
      ),
    ),
    buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.accent),
    // brightness: Brightndess.dark,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: AppConfig.whiteColor),
      bodyText2: TextStyle(color: AppConfig.whiteColor),
      subtitle1: TextStyle(color: AppConfig.whiteColor),
      subtitle2: TextStyle(color: AppConfig.whiteColor),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppConfig.blackColor,
      selectedItemColor: AppConfig.whiteColor,
      unselectedItemColor: AppConfig.greyColor,
    ),
    iconTheme: const IconThemeData(color: AppConfig.whiteColor),
    // accentIconTheme: IconThemeData(color: Colors.black),
    fontFamily: AppConfig.fontFamily,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
    textButtonTheme: const TextButtonThemeData(),
  );

  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(primary: AppConfig.appColor),
    primaryColor: AppConfig.appColor,
    primarySwatch: AppConfig.greyColor,
    backgroundColor: AppConfig.appColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppConfig.appColor),
    // brightness: Brightness.dark,
    iconTheme: const IconThemeData(color: AppConfig.blackColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: AppConfig.blackColor,
        backgroundColor: AppConfig.appColor),
    // accentIconTheme: IconThemeData(color: Colors.black),
    fontFamily: AppConfig.fontFamily,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
    textButtonTheme: const TextButtonThemeData(),
  );
}

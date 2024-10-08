import 'package:flutter/material.dart';
import 'package:seminar_app/styles/app_colors.dart';

class AppTheme {
  AppTheme._();

  static const TextStyle lightHeadingText = TextStyle(
    color: AppColors.textColorPrimaryLight,
    fontFamily: "Verdana",
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle lightBodyText = TextStyle(
    color: AppColors.textColorPrimaryLight,
    fontFamily: "Verdana",
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static const TextTheme lightTextTheme = TextTheme(
    displayLarge: lightHeadingText,
    bodyLarge: lightBodyText,
  );

  static final TextStyle darkThemeHeadingTextStyle = lightHeadingText.copyWith(
    color: AppColors.textColorPrimaryDark,
  );

  static final TextStyle darkThemeBodyeTextStyle = lightBodyText.copyWith(
    color: AppColors.textColorPrimaryDark,
  );

  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: darkThemeHeadingTextStyle,
    bodyLarge: darkThemeBodyeTextStyle,
  );

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColorLight,
    appBarTheme: const AppBarTheme(
      color: AppColors.appbarColorLight,
      iconTheme: IconThemeData(color: AppColors.iconColorLight),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColorLight,
      onPrimary: AppColors.onPrimaryColorLight,
      secondary: AppColors.secondaryColorLight,
      primaryContainer: AppColors.primaryVariantColorLight,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.bottomNavBarColorLight,
      selectedItemColor: AppColors.selectedItemColorLight,
    ),
    textTheme: lightTextTheme,
    hoverColor: AppColors.secondaryColorLight,
    focusColor: AppColors.secondaryColorLight,
    highlightColor: AppColors.secondaryColorLight,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColorDark,
    appBarTheme: const AppBarTheme(
      color: AppColors.appbarColorDark,
      iconTheme: IconThemeData(color: AppColors.iconColorDark),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColorDark,
      secondary: AppColors.secondaryColorDark,
      onPrimary: AppColors.onPrimaryColorDark,
      primaryContainer: AppColors.primaryVariantColorDark,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.bottomNavBarColorDark,
      selectedItemColor: AppColors.selectedItemColorDark,
    ),
    textTheme: darkTextTheme,
    hoverColor: AppColors.secondaryColorDark,
    focusColor: AppColors.secondaryColorDark,
    highlightColor: AppColors.secondaryColorDark,
  );
}

import 'package:flutter/material.dart';
import 'package:seminar_app/styles/app_colors.dart';

class AppTheme {
  AppTheme._();

  static const TextStyle lightHeadingText = TextStyle(
    color: AppColors.lightTextColorPrimary,
    fontFamily: "Verdana",
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle lightBodyText = TextStyle(
    color: AppColors.lightTextColorPrimary,
    fontFamily: "Verdana",
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static const TextTheme lightTextTheme = TextTheme(
    displayLarge: lightHeadingText,
    bodyLarge: lightBodyText,
  );

  static final TextStyle darkThemeHeadingTextStyle = lightHeadingText.copyWith(
    color: AppColors.darkTextColorPrimary,
  );

  static final TextStyle darkThemeBodyeTextStyle = lightBodyText.copyWith(
    color: AppColors.darkTextColorPrimary,
  );

  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: darkThemeHeadingTextStyle,
    bodyLarge: darkThemeBodyeTextStyle,
  );

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      color: AppColors.appbarColorLight,
      iconTheme: IconThemeData(color: AppColors.iconColorLight),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.appbarColorLight),
    colorScheme: ColorScheme.light(
      primary: AppColors.lightPrimaryColor,
      onPrimary: AppColors.lightOnPrimaryColor,
      secondary: AppColors.accentColorLight,
      primaryContainer: AppColors.lightPrimaryVariantColor,
    ),
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkPrimaryColor,
    appBarTheme: AppBarTheme(
      color: AppColors.appbarColorDark,
      iconTheme: const IconThemeData(color: AppColors.iconColorDark),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: AppColors.appbarColorDark),
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimaryColor,
      secondary: AppColors.accentColorDark,
      onPrimary: AppColors.darkOnPrimaryColor,
      primaryContainer: AppColors.darkPrimaryVariantColor,
    ),
    textTheme: darkTextTheme,
  );
}

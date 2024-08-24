import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static final Color lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color lightOnPrimaryColor = Colors.blueGrey.shade400;
  static const Color lightTextColorPrimary = Colors.black;
  static const Color appbarColorLight = Color.fromARGB(255, 156, 46, 175);

  static final Color darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color darkPrimaryVariantColor = Colors.black;
  static const Color darkOnPrimaryColor = Color.fromARGB(255, 119, 161, 182);
  static const Color darkTextColorPrimary = Colors.white;
  static final Color appbarColorDark = Colors.blueGrey.shade800;

  static const Color approveColor = Color.fromARGB(255, 93, 198, 167);
  static const Color disapproveColor = Color.fromARGB(255, 188, 87, 79);

  static const Color iconColorLight = Colors.white;
  static const Color iconColorDark = Color.fromARGB(255, 78, 144, 177);

  static const Color accentColorLight = Color.fromRGBO(69, 223, 223, 1);
  static const Color accentColorDark = Color.fromRGBO(222, 198, 76, 1);
}

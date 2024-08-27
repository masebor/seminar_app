import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/alertdialog_source.dart';

class AvionikDevicesButton extends StatelessWidget {
  const AvionikDevicesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return IconButton(
      icon: const Icon(Icons.airplanemode_active),
      selectedIcon: const Icon(Icons.airplane_ticket_outlined),
      tooltip: Strings.bottomNavBarAvionik,
      focusColor: themeData.bottomNavigationBarTheme.selectedItemColor,
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertdialogSource(source: "https://www.youtube.com/info8uniwue");
            });
      },
    );
  }
}

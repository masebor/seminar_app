import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/features/content/widgets/content_list.dart';
import 'package:seminar_app/styles/theme/application/theme_bloc.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkModeOn = context.read<ThemeBloc>().state == ThemeMode.dark;
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.contentTitle),
        backgroundColor: themeData.appBarTheme.backgroundColor,
        actions: [
          Tooltip(
            message: isDarkModeOn ? Strings.switchLight : Strings.switchDark,
            child: Switch(
                value: isDarkModeOn,
                onChanged: (value) {
                  context.read<ThemeBloc>().add(ToggleThemeEvent(isDark: value));
                }),
          ),
        ],
      ),
      body: const ContentList(),
    );
  }
}

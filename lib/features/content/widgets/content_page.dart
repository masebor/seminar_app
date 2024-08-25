import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/features/avionik_devices/widgets/avionik_devices_page.dart';
import 'package:seminar_app/features/content/widgets/content_list.dart';
import 'package:seminar_app/features/sources/widgets/sources_page.dart';
import 'package:seminar_app/styles/theme/application/theme_bloc.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int currentPageIndex = 0;
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
      body: <Widget>[const ContentList(), const AvionikDevicesPage(), const SourcesPage()][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: themeData.bottomNavigationBarTheme.selectedItemColor,
        selectedIndex: currentPageIndex,
        backgroundColor: themeData.bottomNavigationBarTheme.backgroundColor,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home_outlined),
            label: Strings.bottomNavBarContent,
          ),
          NavigationDestination(
              icon: Icon(Icons.airplanemode_active),
              selectedIcon: Icon(Icons.airplane_ticket_outlined),
              label: Strings.bottomNavBarAvionik),
          NavigationDestination(
            icon: Icon(Icons.source),
            selectedIcon: Icon(Icons.book),
            label: Strings.bottomNavBarSources,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seminar_app/screens/app_building/app_building_screen.dart';
import 'package:seminar_app/screens/conclusion/conclusion_screen.dart';
import 'package:seminar_app/screens/content/content_screen.dart';
import 'package:seminar_app/screens/dart_info/dart_info_screen.dart';
import 'package:seminar_app/screens/flutter_info/flutter_info_screen.dart';
import 'package:seminar_app/screens/install_flutter/install_flutter_screen.dart';
import 'package:seminar_app/screens/intro/intro_screen.dart';
import 'package:seminar_app/utils/custom_empty_loading_page.dart';

Map<String, Widget Function(BuildContext)> myRoutes = {
  "/content": (context) => const ContentScreen(),
  "/intro": (context) => const IntroScreen(),
  "/dart_info": (context) => const DartInfoScreen(),
  "/flutter_info": (context) => const FlutterInfoScreen(),
  "/install_flutter": (context) => const InstallFlutterScreen(),
  "/app_building": (context) => const AppBuildingScreen(),
  "/conclusion": (context) => const ConclusionScreen(),
  "/empty_loading": (context) => const CustomEmptyLoadingPage(),
};

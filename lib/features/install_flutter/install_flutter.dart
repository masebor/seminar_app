import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_play_page.dart';

class InstallFlutterPage extends StatelessWidget {
  const InstallFlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPlayPage(appBartitle: Strings.contentInstall, content: Strings.howToInstall);
  }
}

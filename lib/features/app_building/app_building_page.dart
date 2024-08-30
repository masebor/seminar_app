import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_play_page.dart';

class AppBuildingPage extends StatelessWidget {
  const AppBuildingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPlayPage(
      appBartitle: Strings.contentApp,
      content: Strings.playPageContent,
      contentTwo: Strings.playPageContentTwo,
      contentThree: Strings.playPageContentThree,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class AppBuildingPage extends StatelessWidget {
  const AppBuildingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings.app,
        ),
      ),
      body: Container(),
    );
  }
}

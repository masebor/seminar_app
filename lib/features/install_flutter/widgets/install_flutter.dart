import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class InstallFlutterPage extends StatelessWidget {
  const InstallFlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings.install,
        ),
      ),
      body: Container(),
    );
  }
}

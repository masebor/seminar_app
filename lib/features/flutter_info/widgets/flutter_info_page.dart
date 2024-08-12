import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class FlutterInfoPage extends StatelessWidget {
  const FlutterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings.flutterInfo,
        ),
      ),
      body: Container(),
    );
  }
}

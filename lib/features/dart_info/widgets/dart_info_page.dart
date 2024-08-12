import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class DartInfoPage extends StatelessWidget {
  const DartInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings.dartInfo,
        ),
      ),
      body: Container(),
    );
  }
}

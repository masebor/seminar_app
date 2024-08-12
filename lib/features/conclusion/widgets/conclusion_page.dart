import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class ConclusionPage extends StatelessWidget {
  const ConclusionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings.conclusion,
        ),
      ),
      body: Container(),
    );
  }
}

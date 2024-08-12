import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings.intro,
        ),
      ),
      body: Center(child: Container()),
    );
  }
}

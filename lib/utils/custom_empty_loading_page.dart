import 'package:flutter/material.dart';

class CustomEmptyLoadingPage extends StatelessWidget {
  const CustomEmptyLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              color: themData.colorScheme.onPrimary,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class CustomEmptyLoadingPage extends StatelessWidget {
  const CustomEmptyLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Tooltip(
          message: Strings.emptyToolTipp,
          child: SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(
                color: themData.colorScheme.onPrimary,
              ),
          ),
        ),
      ),
    );
  }
}

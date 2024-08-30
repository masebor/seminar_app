import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class CustomPlayCard extends StatelessWidget {
  final String content;
  const CustomPlayCard({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Card(
      color: themeData.colorScheme.primary,
      margin: const EdgeInsets.all(12),
      elevation: 10,
      child: Center(
        child: ListTile(
          leading: IconButton(
            tooltip: Strings.playVideo,
            onPressed: () {
              Navigator.of(context).pushNamed("/empty_loading");
            },
            icon: const Icon(
              Icons.play_arrow,
            ),
          ),
          title: Text(
            content,
            style: themeData.textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          textColor: themeData.colorScheme.onPrimary,
        ),
      ),
    );
  }
}

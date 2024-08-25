import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/alertdialog_source.dart';

class CustomCard extends StatelessWidget {
  final String content;
  final String source;
  final VoidCallback? tapMe;
  const CustomCard({super.key, required this.content, required this.source, this.tapMe});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Card(
      color: themeData.colorScheme.primary,
      margin: const EdgeInsets.all(12),
      elevation: 10,
      child: ListTile(
        leading: Text(
          content,
          style: themeData.textTheme.displayLarge,
        ),
        trailing: IconButton(tooltip: Strings.sourceAlertTooltipp,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertdialogSource(source: source);
                  });
            },
            icon: const Icon(
              Icons.source,
            )),
        textColor: themeData.colorScheme.onPrimary,
      ),
    );
  }
}

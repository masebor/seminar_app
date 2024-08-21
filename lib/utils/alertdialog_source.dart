import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/launch_url.dart';

class AlertdialogSource extends StatelessWidget {
  final String source;
  const AlertdialogSource({super.key, required this.source});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return AlertDialog(
      title: const Text(Strings.sourceAlertTitle),
      content:  SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(Strings.sourceAlertTextOne, style: themeData.textTheme.bodyLarge,),
            Text(Strings.sourceAlertTextTwo, style: themeData.textTheme.bodyLarge,),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(Strings.sourceAlertNo),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text(Strings.sourceAlertYes),
          onPressed: () {
            launchInBrowser(Uri.parse(source));
          },
        ),
      ],
    );
  }
}
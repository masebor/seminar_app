import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/styles/app_colors.dart';
import 'package:seminar_app/utils/launch_url.dart';

class AlertdialogSource extends StatelessWidget {
  final String source;
  const AlertdialogSource({super.key, required this.source});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return AlertDialog(
      title: const Text(Strings.sourceAlertTitle),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              Strings.sourceAlertTextOne,
              style: themeData.textTheme.bodyLarge,
            ),
            SelectionArea(
                child: Text(
              source,
              style: themeData.textTheme.bodyLarge,
            )),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            Strings.sourceAlertNo,
            style: themeData.textTheme.bodyLarge?.copyWith(color: AppColors.disapproveColor),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text(
            Strings.sourceAlertYes,
            style: themeData.textTheme.bodyLarge?.copyWith(color: AppColors.approveColor),
          ),
          onPressed: () {
            launchInBrowser(Uri.parse(source));
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

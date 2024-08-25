import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/alertdialog_source.dart';
import 'package:seminar_app/utils/custom_image_dialog.dart';

class CustomCard extends StatelessWidget {
  final String content;
  final String source;
  final String? pathString;
  final VoidCallback? tapMe;
  const CustomCard({
    super.key,
    required this.content,
    required this.source,
    this.tapMe,
    this.pathString,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Card(
      color: themeData.colorScheme.primary,
      margin: const EdgeInsets.all(12),
      elevation: 10,
      child: ListTile(
        onTap: tapMe,
        onLongPress: () {},
        leading: Text(
          content,
          style: themeData.textTheme.displayLarge,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            pathString != null
                ? IconButton(tooltip: Strings.sourceAlertPicture,
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (_) => CustomImageDialog(
                          pathString: pathString != null ? pathString.toString() : "",
                        ),
                      );
                    },
                    icon: const Icon(Icons.photo))
                : Container(),
            IconButton(
                tooltip: Strings.sourceAlertSourceLink,
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
          ],
        ),
        textColor: themeData.colorScheme.onPrimary,
      ),
    );
  }
}

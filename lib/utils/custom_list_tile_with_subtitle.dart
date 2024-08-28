import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/alertdialog_source.dart';
import 'package:seminar_app/utils/check_if_null.dart';
import 'package:seminar_app/utils/custom_image_dialog.dart';

class CustomListTileWithSubtitle extends StatelessWidget {
  final String? leading;
  final String title;
  final String? subtitle;
  final String? source;
  final String? pathString;
  final VoidCallback? tapMe;
  const CustomListTileWithSubtitle(
      {super.key, this.leading, required this.title, this.subtitle, this.pathString, this.source, this.tapMe});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return ListTile(
      onTap: tapMe,
      onLongPress: () {},
      leading: Text(checkIfNullString(leading)),
      title: Text(
        title,
        style: themeData.textTheme.displayLarge,
      ),
      subtitle: Text(checkIfNullString(subtitle)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          pathString != null
              ? IconButton(
                  tooltip: Strings.sourceAlertImage,
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (_) => CustomImageDialog(
                        pathString: checkIfNullString(pathString),
                      ),
                    );
                  },
                  icon: const Icon(Icons.photo))
              : Container(),
          checkIfSource(source) ? IconButton(
            tooltip: Strings.sourceAlertSourceLink,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertdialogSource(source: source.toString());
                },
              );
            },
            icon: const Icon(
              Icons.source,
            ),
          ) : Container(),
        ],
      ),
      textColor: themeData.colorScheme.onPrimary,
    );
  }
}

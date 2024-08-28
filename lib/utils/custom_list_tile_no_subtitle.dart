import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/alertdialog_source.dart';
import 'package:seminar_app/utils/check_if_null.dart';
import 'package:seminar_app/utils/custom_image_dialog.dart';

class CustomListTileNoSubtitle extends StatelessWidget {
  final String? leading;
  final String title;
  final String source;
  final String? pathString;
  final VoidCallback? tapMe;
  const CustomListTileNoSubtitle(
      {super.key, this.leading, required this.title, this.pathString, required this.source, this.tapMe});

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
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          pathString != null
              ? IconButton(
                  tooltip: Strings.sourceAlertPicture,
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
            ),
          ),
        ],
      ),
      textColor: themeData.colorScheme.onPrimary,
    );
  }
}

import 'package:flutter/material.dart';

class ContentCards extends StatelessWidget {
  final String content;
  final IconData fittingIcon;
  final VoidCallback? tapMe;
  const ContentCards({super.key, required this.content, required this.fittingIcon, this.tapMe});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Card(
      color: themeData.colorScheme.primary,
      margin: const EdgeInsets.all(12),
      elevation: 10,
      child: ListTile(
        onTap: tapMe,
        leading: Text(
          content,
          style: themeData.textTheme.displayLarge,
        ),
        trailing: Icon(fittingIcon,),
        textColor: themeData.colorScheme.onPrimary,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seminar_app/utils/custom_list_tile_no_subtitle.dart';
import 'package:seminar_app/utils/custom_list_tile_with_subtitle.dart';

class CustomCard extends StatelessWidget {
  final String? leading;
  final String title;
  final String? subtitle;
  final String? pathString;
  final String? source;
  final VoidCallback? tapMe;
  const CustomCard({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    this.pathString,
    this.source,
    this.tapMe,
  });

  //subtitle when used as "" leaves spaces -> two separate widgets
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Card(
      color: themeData.colorScheme.primary,
      margin: const EdgeInsets.all(12),
      elevation: 10,
      child: subtitle != null
          ? CustomListTileWithSubtitle(
              leading: leading,
              title: title,
              subtitle: subtitle,
              pathString: pathString,
              source: source,
              tapMe: tapMe,
            )
          : CustomListTileNoSubtitle(
              leading: leading,
              title: title,
              pathString: pathString,
              source: source,
              tapMe: tapMe,
            ),
    );
  }
}

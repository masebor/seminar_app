import 'package:flutter/material.dart';
import 'package:seminar_app/constants/global_animated_keys.dart';
import 'package:seminar_app/data/source_url_lists.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_animated_list.dart';

class DartInfoPage extends StatelessWidget {
  const DartInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedList(
      sourceList: SourceUrlLists.sourceDartInfoList,
      animatedKey: GlobalAnimatedKeys.dartInfoPageKey,
      title: Strings.dartInfo,
    );
  }
}

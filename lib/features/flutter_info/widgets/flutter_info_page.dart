import 'package:flutter/material.dart';
import 'package:seminar_app/constants/global_animated_keys.dart';
import 'package:seminar_app/constants/source_url_lists.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_animated_list.dart';

class FlutterInfoPage extends StatelessWidget {
  const FlutterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedList(
      sourceList: SourceUrlLists.sourceFlutterInfoList,
      animatedKey: GlobalAnimatedKeys.flutterInfoPageKey,
      title: Strings.flutterInfo,
    );
  }
}

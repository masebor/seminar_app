import 'package:flutter/material.dart';
import 'package:seminar_app/constants/global_animated_keys.dart';
import 'package:seminar_app/data/sourceLists/source_list_flutter_info.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_animated_list.dart';

class FlutterInfoPage extends StatelessWidget {
  const FlutterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedList(
      sourceList: SourceListFlutterInfo.sourceListFlutterInfo,
      animatedKey: GlobalAnimatedKeys.flutterInfoPageKey,
      title: Strings.contentFlutterInfo,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seminar_app/constants/global_animated_keys.dart';
import 'package:seminar_app/data/source_url_lists.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_animated_list.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedList(
      sourceList: SourceUrlLists.sourceIntroList,
      animatedKey: GlobalAnimatedKeys.introPageKey,
      title: Strings.intro,
    );
  }
}

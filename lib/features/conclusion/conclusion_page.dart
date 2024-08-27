import 'package:flutter/material.dart';
import 'package:seminar_app/constants/global_animated_keys.dart';
import 'package:seminar_app/data/source_url_lists.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_animated_list.dart';

class ConclusionPage extends StatelessWidget {
  const ConclusionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedList(
      sourceList: SourceUrlLists.sourceConclusionList,
      animatedKey: GlobalAnimatedKeys.conclusionPageKey,
      title: Strings.conclusion,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seminar_app/data/sourceLists/source_list_conclusion.dart';
import 'package:seminar_app/data/sourceLists/source_list_dart_info.dart';
import 'package:seminar_app/data/sourceLists/source_list_flutter_info.dart';
import 'package:seminar_app/data/sourceLists/source_list_install_and_app.dart';
import 'package:seminar_app/data/sourceLists/source_list_intro.dart';
import 'package:seminar_app/utils/custom_card.dart';

class SourcesPage extends StatefulWidget {
  const SourcesPage({super.key});

  @override
  State<SourcesPage> createState() => _SourcesPageState();
}

class _SourcesPageState extends State<SourcesPage> {
  List<CustomCard> mySourceList = [
    ...SourceListIntro.sourceListIntro,
    ...SourceListFlutterInfo.sourceListFlutterInfo,
    ...SourceListDartInfo.sourceListDartInfo,
    ...SourceListInstallAndApp.sourceListInstallAndApp,
    ...SourceListConclusion.sourceListConclusion,
  ];

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView.builder(
          itemCount: mySourceList.length,
          itemBuilder: (context, index) {
            return CustomCard(
              leading: "[${(index + 1).toString()}]",
              title: mySourceList[index].title,
              subtitle: mySourceList[index].subtitle,
              pathString: mySourceList[index].pathString,
              source: mySourceList[index].source,
              tapMe: mySourceList[index].tapMe,
            );
          },
        ));
  }
}

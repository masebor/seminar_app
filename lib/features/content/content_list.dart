import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/features/content/content_cards.dart';

class ContentList extends StatelessWidget {
  const ContentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(highlightColor: Colors.amber,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            children: [
              ContentCards(
                content: Strings.contentIntro,
                fittingIcon: Icons.question_mark,
                tapMe: () {
                  Navigator.of(context).pushNamed("/intro");
                },
              ),
              ContentCards(
                content: Strings.contentDartInfo,
                fittingIcon: Icons.border_inner_rounded,
                tapMe: () {
                  Navigator.of(context).pushNamed("/dart_info");
                },
              ),
              ContentCards(
                content: Strings.contentFlutterInfo,
                fittingIcon: Icons.now_widgets,
                tapMe: () {
                  Navigator.of(context).pushNamed("/flutter_info");
                },
              ),
              ContentCards(
                content: Strings.contentInstall,
                fittingIcon: Icons.install_desktop,
                tapMe: () {
                  Navigator.of(context).pushNamed("/install_flutter");
                },
              ),
              ContentCards(
                content: Strings.contentApp,
                fittingIcon: Icons.build,
                tapMe: () {
                  Navigator.of(context).pushNamed("/app_building");
                },
              ),
              ContentCards(
                content: Strings.contentConclusion,
                fittingIcon: Icons.key,
                tapMe: () {
                  Navigator.of(context).pushNamed("/conclusion");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

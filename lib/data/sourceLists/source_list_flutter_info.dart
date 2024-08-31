import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_card.dart';

class SourceListFlutterInfo {
  static final List<CustomCard> sourceListFlutterInfo = [
    const CustomCard(
      title: Strings.flutterInfoTitleHistory,
      source: "https://en.wikipedia.org/wiki/Flutter_(software)",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitleShowcase,
      pathString: "https://storage.googleapis.com/cms-storage-bucket/625121b763864bd5c67d.gif",
      source: "https://flutter.dev/showcase",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitleEverythingIsWidget,
      pathString: "https://docs.flutter.dev/assets/images/docs/ui/layout/sample-flutter-layout.png",
      source: "https://docs.flutter.dev/ui/layout",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitleCrossPlatform,
      source: "https://flutter.dev/multi-platform",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitlePlatformAdaptations,
      source: "https://docs.flutter.dev/platform-integration/platform-adaptations",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitleDeclaratively,
      subtitle: Strings.flutterInfoSubtitleDeclaratively,
      pathString: "https://docs.flutter.dev/assets/images/docs/development/data-and-backend/state-mgmt/ui-equals-function-of-state.png",
      source: "https://docs.flutter.dev/data-and-backend/state-mgmt/declarative",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitleReactive,
      source: "https://docs.flutter.dev/resources/architectural-overview",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitleMVVM,
      subtitle: Strings.flutterInfoSubtitleMVVM,
      source: "https://de.wikipedia.org/wiki/Model_View_ViewModel#",
      pathString: "https://upload.wikimedia.org/wikipedia/commons/8/87/MVVMPattern.png",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitlePOC,
      subtitle: Strings.flutterInfoSubtitlePOC,
      source: "https://de.wikipedia.org/wiki/Proof_of_Concept",
    ),
    const CustomCard(
      title: Strings.flutterInfoTitleMVP,
      subtitle: Strings.flutterInfoSubtitleMVP,
      source: "https://de.wikipedia.org/wiki/Minimum_Viable_Product",
    ),
  ];
}

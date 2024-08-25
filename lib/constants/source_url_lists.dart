import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_card.dart';

class SourceUrlLists {
  static final List<CustomCard> sourceIntroList = [
    const CustomCard(content: Strings.introAndroid, source: "https://docs.flutter.dev/platform-integration/android/install-android"),
    const CustomCard(content: Strings.introWeb, source: "https://docs.flutter.dev/platform-integration/web/building"),
    const CustomCard(content: Strings.introIOS, source: "https://docs.flutter.dev/platform-integration/ios/install-ios"),
    const CustomCard(content: Strings.introMacOs, source: "https://docs.flutter.dev/platform-integration/macos/install-macos"),
    const CustomCard(content: Strings.introWindows, source: "https://docs.flutter.dev/platform-integration/windows/install-windows"),
    const CustomCard(content: Strings.introWeb, source: "https://docs.flutter.dev/platform-integration/linux/install-linux"),
  ];

  static final List<CustomCard> sourceDartInfoList = [
    const CustomCard(content: "", source: ""),
  ];
  static final List<CustomCard> sourceFlutterInfoList = [
    const CustomCard(
      content: Strings.flutterInfoMVVM,
      source: "https://de.wikipedia.org/wiki/Model_View_ViewModel#",
      pathString: "https://upload.wikimedia.org/wikipedia/commons/8/87/MVVMPattern.png",
    ),
  ];
  static final List<CustomCard> sourceConclusionList = [
    const CustomCard(content: "", source: ""),
  ];
}

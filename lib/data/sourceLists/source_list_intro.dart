import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_card.dart';

class SourceListIntro {
  static final List<CustomCard> sourceListIntro = [
    const CustomCard(title: Strings.introAndroid, source: "https://docs.flutter.dev/platform-integration/android/install-android"),
    const CustomCard(title: Strings.introWeb, source: "https://docs.flutter.dev/platform-integration/web/building"),
    const CustomCard(title: Strings.introIOS, source: "https://docs.flutter.dev/platform-integration/ios/install-ios"),
    const CustomCard(title: Strings.introMacOs, source: "https://docs.flutter.dev/platform-integration/macos/install-macos"),
    const CustomCard(title: Strings.introWindows, source: "https://docs.flutter.dev/platform-integration/windows/install-windows"),
    const CustomCard(title: Strings.introWeb, source: "https://docs.flutter.dev/platform-integration/linux/install-linux"),
  ];

}

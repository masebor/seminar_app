import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_card.dart';

class SourceListInstallAndApp {
  static final List<CustomCard> sourceListInstallAndApp = [
    const CustomCard(title: Strings.howToInstall, source: "https://docs.flutter.dev/get-started/install"),
    const CustomCard(title: Strings.playPageContent, source: "https://docs.flutter.dev/ui/widgets/basics"),
    const CustomCard(title: Strings.playPageContentTwo, source: "https://dartpad.dev/"),
    const CustomCard(title: Strings.playPageContentThree, source: "https://github.com/masebor/seminar_app"),
  ];
}

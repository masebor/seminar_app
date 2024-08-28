import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_card.dart';

class SourceListDartInfo {
  static final List<CustomCard> sourceListDartInfo = [
    const CustomCard(title: Strings.dartInfoTitleJIT, subtitle: Strings.dartInfoSubtitleJIT, source: "https://dart.dev/overview"),
    const CustomCard(title: Strings.dartInfoTitleAOT, subtitle: Strings.dartInfoSubtitleAOT, source: "https://dart.dev/overview"),
    const CustomCard(title: Strings.dartInfoTitleWeb, subtitle: Strings.dartInfoSubtitleWeb, source: "https://dart.dev/overview"),
    const CustomCard(title: Strings.dartInfoTitleNullSafety, subtitle: Strings.dartInfoSubtitleNullSafety, source: "https://dart.dev/null-safety"),
    const CustomCard(title: Strings.dartInfoTitleVersatility, subtitle: Strings.dartInfoSubtitleVersatility, source: "https://dart.dev/language"),
    
  ];


}

import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';
import 'package:seminar_app/utils/custom_card.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _introListKey = GlobalKey<AnimatedListState>();
  bool oldListLengthReached = false;

  List<CustomCard> oldIntroList = [
    const CustomCard(content: "Android", source: "https://www.android.com/"),
    const CustomCard(content: "iOS", source: "https://www.apple.com/de/ios/"),
    const CustomCard(
        content: "long Html",
        source:
            "https://www.google.com/search?q=how+to+make+text+selectable+influtter&client=firefox-b-d&sca_esv=33b519b0d73ed9c3&sca_upv=1&ei=DuLJZrbaEOKhi-gPzoDhyAM&ved=0ahUKEwi2mdns342IAxXi0AIHHU5AGDkQ4dUDCA8&uact=5&oq=how+to+make+text+selectable+influtter&gs_lp=Egxnd3Mtd2l6LXNlcnAiJWhvdyB0byBtYWtlIHRleHQgc2VsZWN0YWJsZSBpbmZsdXR0ZXIyCRAAGIAEGBMYDTIIEAAYgAQYogQyCBAAGIAEGKIESOwKUO8CWIcKcAF4AZABAJgBf6ABsAWqAQM1LjK4AQPIAQD4AQGYAgegAukEwgIKEAAYsAMY1gQYR8ICBRAhGKABwgIIEAAYCBgNGB6YAwCIBgGQBgiSBwM1LjKgB8QU&sclient=gws-wiz-serp"),
  ];

  List<CustomCard> introList = [];

  void addListItem() {
    final newIndex = introList.length;

    // next increment -> max is reached
    if (newIndex == oldIntroList.length - 1) {
      oldListLengthReached = true;
    }
    setState(() {
      introList.add(oldIntroList[newIndex]);
    });
    _introListKey.currentState?.insertItem(newIndex);
  }

  Widget buildItem(CustomCard customCard, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: customCard,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings.intro,
        ),
      ),
      body: AnimatedList(
        key: _introListKey,        
        itemBuilder: (context, index, animation) {
          return buildItem(introList[index], animation);
        },
      ),
      floatingActionButton: oldListLengthReached ? Container() : FloatingActionButton(
        onPressed: addListItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}

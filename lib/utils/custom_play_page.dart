import 'package:flutter/material.dart';
import 'package:seminar_app/utils/custom_play_card.dart';

class CustomPlayPage extends StatelessWidget {
  final String appBartitle;
  final String content;
  final String? contentTwo;
  final String? contentThree;

  const CustomPlayPage({
    super.key,
    required this.appBartitle,
    required this.content,
    this.contentTwo,
    this.contentThree,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(appBartitle),
        centerTitle: true,
        backgroundColor: themeData.appBarTheme.backgroundColor,
        titleTextStyle: themeData.textTheme.displayLarge,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: SizedBox(
            width: screenWidth * 0.7,
            height: screenHeight * 0.4,
            child: Column(
              children: [
                CustomPlayCard(content: content),
                contentTwo != null ? CustomPlayCard(content: contentTwo.toString()) : Container(),
                contentThree != null ? CustomPlayCard(content: contentThree.toString()) : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

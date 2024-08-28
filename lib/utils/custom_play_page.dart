import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class CustomPlayPage extends StatelessWidget {
  final String appBartitle;
  final String content;

  const CustomPlayPage({
    super.key,
    required this.appBartitle,
    required this.content,
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
            height: screenHeight* 0.4,
            child: Card(
              color: themeData.colorScheme.primary,
              margin: const EdgeInsets.all(12),
              elevation: 10,
              child: Center(
                child: ListTile(
                  leading: IconButton(
                    tooltip: Strings.playVideo,
                    onPressed: () {                      
                      Navigator.of(context).pushNamed("/empty_loading");
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                    ),
                  ),
                  title: Text(
                    content,
                    style: themeData.textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  textColor: themeData.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

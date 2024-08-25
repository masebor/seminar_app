import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class CustomPlayPage extends StatelessWidget {
  final String title;
  final String content;

  const CustomPlayPage({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: themeData.appBarTheme.backgroundColor,
        titleTextStyle: themeData.textTheme.displayLarge,
      ),
      body: Center(
        child: SizedBox(
          width: screenWidth * 0.3,
          height: screenHeight * 0.3,
          child: Card(
            color: themeData.colorScheme.primary,
            margin: const EdgeInsets.all(12),
            elevation: 10,
            child: Center(
              child: ListTile(
                leading: IconButton(
                  tooltip: Strings.playVideo,
                  onPressed: () {},
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
    );
  }
}

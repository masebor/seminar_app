import 'package:flutter/material.dart';

class CustomImageDialog extends StatelessWidget {
  final String pathString;

  const CustomImageDialog({super.key, required this.pathString});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      child: SizedBox(
        width: screenWidth * 0.8,
        height: screenHeight * 0.8,
        child: Image.network(
          pathString,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

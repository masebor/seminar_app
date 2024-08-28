import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<String> getTextToCode(String textFileName) async {
  return await rootBundle.loadString(textFileName);
}

Future<String> loadAsset(BuildContext context, String textFileName) async {
  return await DefaultAssetBundle.of(context).loadString(textFileName);
}

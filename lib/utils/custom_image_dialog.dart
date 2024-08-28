import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:seminar_app/constants/strings.dart';

class CustomImageDialog extends StatelessWidget {
  final String pathString;

  const CustomImageDialog({super.key, required this.pathString});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Dialog(
      child: CachedNetworkImage(
        imageUrl: pathString,
        fit: BoxFit.fill,
        placeholder: (context, url) => SizedBox(
          height: 50.0,
          width: 50.0,
          child: Center(
            child: CircularProgressIndicator(
              color: themeData.colorScheme.primary,
            ),
          ),
        ),
        errorWidget: (context, url, error) => const SizedBox(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error),
              Text(Strings.imageLoadingError),
            ],
          ),
        ),
      ),
    );
  }
}

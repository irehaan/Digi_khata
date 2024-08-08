// images.dart
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String assetPath;
  final double width;
  final double height;

  CustomImage(
      {required this.assetPath, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      width: width,
      height: height,
    );
  }
}

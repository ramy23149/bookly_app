import 'package:flutter/material.dart';

class StateImage extends StatelessWidget {
  const StateImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath);
  }
}

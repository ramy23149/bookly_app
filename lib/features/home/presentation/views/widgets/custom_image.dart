import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.padding,
    required this.imageUrl,
  });

  final EdgeInsetsGeometry? padding;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Padding(
        padding: padding ?? const EdgeInsets.only(right: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
              //  progressIndicatorBuilder: (context, url, progress) => const Center(child: CircularProgressIndicator()),
              fit: BoxFit.fill,
              errorWidget:(context, url, error) => Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7pvKBFQH14tQp9AXqI4PnB-M0FbLWyyDCQ&usqp=CAU'),
              imageUrl: imageUrl),
        ),
      ),
    );
  }
}

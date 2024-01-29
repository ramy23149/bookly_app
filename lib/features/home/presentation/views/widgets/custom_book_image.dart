import 'package:bookly_app/core/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    this.padding,
    required this.imageUrl,
  });
  final String imageUrl;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RouterApp.kBookDetailsView);
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Padding(
          padding: padding ?? const EdgeInsets.only(right: 16),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      imageUrl
                          
                    ))),
          ),
        ),
      ),
    );
  }
}

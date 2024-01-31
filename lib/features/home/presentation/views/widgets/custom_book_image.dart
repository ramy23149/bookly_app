import 'package:bookly_app/core/router.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      child: CustomImage(padding: padding, imageUrl: imageUrl),
    );
  }
}



//  Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 image: DecorationImage(
//                     fit: BoxFit.fill,
//                     image: NetworkImage(
//                       imageUrl
                          
//                     ))),
//           ),
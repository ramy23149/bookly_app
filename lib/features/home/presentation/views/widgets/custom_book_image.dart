import 'package:bookly_app/core/router.dart';
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
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Padding(
          padding: padding ?? const EdgeInsets.only(right: 16),
          child:ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
            //  progressIndicatorBuilder: (context, url, progress) => const Center(child: CircularProgressIndicator()),
              fit: BoxFit.fitWidth,
              errorWidget: (context, url, error) => const Icon(Icons.error_outline_sharp),
              imageUrl: imageUrl),
          ) ,
        ),
      ),
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
import 'package:bookly_app/core/router.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    this.padding,
    required this.imageUrl, required this.bookModel,
  });
  final BookModel bookModel;
  final String imageUrl;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RouterApp.kBookDetailsView, extra: bookModel);
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
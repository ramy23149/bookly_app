import 'package:bookly_app/core/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(RouterApp.kBookDetailsView);
      },
      child: AspectRatio(
        aspectRatio: 3/4,
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/me.jpg',
                    ))),
          ),
        ),
      ),
    );
  }
}

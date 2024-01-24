import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book_Rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action_botton.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jangle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18,
            )),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 26,
        ),
        const BooksAction(),
      ],
    );
  }
}

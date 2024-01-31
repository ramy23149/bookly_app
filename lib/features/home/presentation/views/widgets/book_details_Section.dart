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
          child:  const CustomBookImage(
            imageUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F3%2F3a%2FCat03.jpg%2F1025px-Cat03.jpg&tbnid=QqjtoOP0WtwXIM&vet=12ahUKEwiW5eeDsIOEAxU1QaQEHVoZChkQMygBegQIARBQ..i&imgrefurl=https%3A%2F%2Fen.m.wikipedia.org%2Fwiki%2FFile%3ACat03.jpg&docid=dom--IhFjsnP_M&w=1025&h=1024&q=jpg%20image&ved=2ahUKEwiW5eeDsIOEAxU1QaQEHVoZChkQMygBegQIARBQ',
          ),
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
          ratting: 5,
          rattingCount: 15,
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

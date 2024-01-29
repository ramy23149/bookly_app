import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CustomBookImage(
              imageUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F3%2F3a%2FCat03.jpg%2F1025px-Cat03.jpg&tbnid=QqjtoOP0WtwXIM&vet=12ahUKEwiW5eeDsIOEAxU1QaQEHVoZChkQMygBegQIARBQ..i&imgrefurl=https%3A%2F%2Fen.m.wikipedia.org%2Fwiki%2FFile%3ACat03.jpg&docid=dom--IhFjsnP_M&w=1025&h=1024&q=jpg%20image&ved=2ahUKEwiW5eeDsIOEAxU1QaQEHVoZChkQMygBegQIARBQ',
              padding: EdgeInsets.symmetric(horizontal: 4),
            );
          }),
    );
  }
}

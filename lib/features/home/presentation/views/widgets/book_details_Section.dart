import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book_Rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action_botton.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:  CustomBookImage(
            bookModel: bookModel,
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7pvKBFQH14tQp9AXqI4PnB-M0FbLWyyDCQ&usqp=CAU',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
         Text(
         bookModel.volumeInfo.title!,
         textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
         Opacity(
            opacity: 0.7,
            child: Text(
              bookModel.volumeInfo.authors?.first??'anKnowen',
              style: Styles.textStyle18,
            )),
        const SizedBox(
          height: 18,
        ),
         BookRating(
          ratting: bookModel.volumeInfo.averageRating?? 0,
          rattingCount: bookModel.volumeInfo.ratingsCount??0,
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

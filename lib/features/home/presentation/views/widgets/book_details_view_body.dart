
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_Section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/costoum_book_details_Appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/smiler_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel, });
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
              const  CostoumBookDetailsAppbar(),
              const  SizedBox(
                  height: 70,
                ),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
              const  Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
              SmilerBooksSection(
                  subject: bookModel.volumeInfo.categories?.first??'general',
                ),
              const  SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

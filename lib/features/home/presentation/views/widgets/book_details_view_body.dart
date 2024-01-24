import 'package:bookly_app/features/home/presentation/views/widgets/book_details_Section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/costoum_book_details_Appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/smiler_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CostoumBookDetailsAppbar(),
                SizedBox(
                  height: 100,
                ),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SmilerBooksSection(),
                SizedBox(
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

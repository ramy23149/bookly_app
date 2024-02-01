import 'package:bookly_app/core/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/costum_Botton.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: CustomBotton(
            text: '0\$',
          ),
        ),
        Expanded(
          child: CustomBotton(
            onPressed: () async {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
            text: getText(bookModel),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            backgroundColor: const Color(0xffEA845F),
            textColor: Colors.white,
          ),
        )
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}

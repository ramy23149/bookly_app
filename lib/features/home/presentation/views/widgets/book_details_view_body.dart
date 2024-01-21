import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/costoum_book_details_Appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CostoumBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.17),
            child: const CustomBookImage(),
          )
        ],
      ),
    );
  }
}

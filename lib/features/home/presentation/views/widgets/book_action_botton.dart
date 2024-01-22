import 'package:bookly_app/core/widgets/costum_Botton.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomBotton(
            text: '19.99€',
          ),
        ),
        Expanded(
          child: CustomBotton(
            text: 'Free Previwe',
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
            backgroundColor: Color(0xffEA845F),
            textColor: Colors.white,
          ),
        )
      ],
    );
  }
}
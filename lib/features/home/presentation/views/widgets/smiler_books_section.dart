import 'package:bookly_app/core/styles.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:flutter/material.dart';

class SmilerBooksSection extends StatelessWidget {
  const SmilerBooksSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'you can also see',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 16,
        ),
         const BookDetailsListView(
        
        ),
      ],
    );
  }
}

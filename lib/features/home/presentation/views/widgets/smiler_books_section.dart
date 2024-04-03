import 'package:bookly_app/core/styles.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class SmilerBooksSection extends StatelessWidget {
  const SmilerBooksSection({super.key, required this.subject});
  final String subject;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).suggest,
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 16,
        ),
          BookDetailsListView(
        subject: subject,
        ),
      ],
    );
  }
}

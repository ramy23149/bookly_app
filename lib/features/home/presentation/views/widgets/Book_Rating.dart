import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.ratting, required this.rattingCount,
    
  });
  final MainAxisAlignment mainAxisAlignment;
  final num ratting;
  final int rattingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          ratting.toString(),
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 3.7,
        ),
        Text(
          '($rattingCount)',
          style: Styles.textStyle14
              .copyWith(color: Colors.grey, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

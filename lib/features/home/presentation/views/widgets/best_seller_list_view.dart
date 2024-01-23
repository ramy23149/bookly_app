import 'package:bookly_app/constans.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best_Seller_List_View_Item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => const Padding(
          padding: kPadding,
          child: BookListViewItem(),
        ),
      ),
    );
  }
}

//7l a5r
// ListView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return const BestSellerListViewItem();
//         });

//wa b3den t7ot el widget de fi SliverFillRamaning fi el home view body
import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/widgets/custom_error_massege.dart';
import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/maneger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best_Seller_List_View_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooks extends StatelessWidget {
  const FeaturedBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: kPadding,
              child: BookListViewItem(
                bookModel: state.books[index],
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMassege(errMassege: state.errMassege);
        } else {
          return const CustomLoadingIndecator();
        }
      },
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

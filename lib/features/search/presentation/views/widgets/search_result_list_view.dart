import 'package:bookly_app/core/widgets/custom_error_massege.dart';
import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best_Seller_List_View_Item.dart';
import 'package:bookly_app/features/search/presentation/maneger/searching_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/inital_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BookListViewItem(
                bookModel: state.books[index],
              );
            },
          );
        } else if (state is SearchFailer) {
          return CustomErrorMassege(errMassege: state.errmassege);
        } else if (state is SearchLoading) {
          return const CustomLoadingIndecator();
        } else {
          return InitialState();
        }
      },
    );
  }
}

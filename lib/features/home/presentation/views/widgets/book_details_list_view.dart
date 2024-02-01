import 'package:bookly_app/core/widgets/custom_error_massege.dart';
import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/maneger/suggestion_Books_cubit/suggestion_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestionBooksCubit, SuggestionBooksState>(
      builder: (context, state) {
        if (state is SuggestionBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CustomBookImage(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7pvKBFQH14tQp9AXqI4PnB-M0FbLWyyDCQ&usqp=CAU',
                    padding: EdgeInsets.symmetric(horizontal: 4),
                  );
                }),
          );
        } else if (state is SuggestionBooksFailer) {
          return CustomErrorMassege(errMassege: state.errmassege);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}

import 'package:bookly_app/core/widgets/custom_error_massege.dart';
import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/maneger/suggestion_Books_cubit/suggestion_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsListView extends StatefulWidget {
  const BookDetailsListView({
    super.key, required this.subject,
  });
  final String subject;

  @override
  State<BookDetailsListView> createState() => _BookDetailsListViewState();
}

class _BookDetailsListViewState extends State<BookDetailsListView> {
  
  @override
  void initState() {
    super.initState();
  

    // Fetch suggestion books with the initial subject value
    BlocProvider.of<SuggestionBooksCubit>(context)
        .fetchSuggestionBooks(subject: widget.subject);
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestionBooksCubit, SuggestionBooksState>(
      builder: (context, state) {
        if (state is SuggestionBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return CustomBookImage(
                    bookModel: state.books[index],
                    imageUrl: state
                            .books[index].volumeInfo.imageLinks?.thumbnail ??
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-7pvKBFQH14tQp9AXqI4PnB-M0FbLWyyDCQ&usqp=CAU',
                    padding: const EdgeInsets.symmetric(horizontal: 4),
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

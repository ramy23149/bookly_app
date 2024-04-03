import 'package:bookly_app/core/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/maneger/suggestion_Books_cubit/suggestion_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/home_repo_impl.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SuggestionBooksCubit(getIt.get<HomeRepoImpl>(),bookModel),
      child: Scaffold(
        body: SafeArea(
            child: BookDetailsViewBody(
          bookModel: bookModel,
        )),
      ),
    );
  }
}

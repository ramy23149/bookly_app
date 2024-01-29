import 'package:bookly_app/core/widgets/custom_error_massege.dart';
import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/maneger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooks extends StatelessWidget {
  const NewsetBooks({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .26,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  CustomBookImage(
                    imageUrl:state.books[index].volumeInfo.imageLinks.smallThumbnail ,
                   padding: const EdgeInsets.only(right: 16),
                  );
                }),
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorMassege(errMassege: state.errMassege);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}

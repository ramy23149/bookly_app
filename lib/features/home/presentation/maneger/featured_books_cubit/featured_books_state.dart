part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMassege;

  FeaturedBooksFailure(this.errMassege);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

part of 'newset_books_cubit.dart';

abstract class NewsetBooksState {}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoading extends NewsetBooksState {}

class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewsetBooksState {
  final String errMassege;

  NewsetBooksFailure(this.errMassege);
}

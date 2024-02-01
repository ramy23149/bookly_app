part of 'suggestion_books_cubit.dart';

sealed class SuggestionBooksState extends Equatable {
  const SuggestionBooksState();

  @override
  List<Object> get props => [];
}

class SuggestionBooksInitial extends SuggestionBooksState {}

class SuggestionBooksLoadding extends SuggestionBooksState {}

class SuggestionBooksFailer extends SuggestionBooksState {
  final String errmassege;

  const SuggestionBooksFailer(this.errmassege);
}

class SuggestionBooksSuccess extends SuggestionBooksState {
  final List<BookModel> books;

  const SuggestionBooksSuccess(this.books);
}

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'suggestion_books_state.dart';

class SuggestionBooksCubit extends Cubit<SuggestionBooksState> {
  SuggestionBooksCubit(this.homeRepo, this.bookModel, )
      : super(SuggestionBooksInitial());
  final HomeRepo homeRepo;
  final BookModel bookModel;
  

  Future<void> fetchSuggestionBooks({required String subject}) async {
    emit(SuggestionBooksLoadding());
    var resulte = await homeRepo.suggestionBooks(category: subject);

    return resulte.fold((falier) => emit(SuggestionBooksFailer(falier.errMasessge)), (books) => emit(SuggestionBooksSuccess(books)));
  }
}

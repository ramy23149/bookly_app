import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRopo,) : super(SearchInitial());
  final SearchRopo searchRopo;
  

  Future<void> getSerchBooks({required String? bookName}) async {
    emit(SearchLoading());
    var result =
        await searchRopo.fetchSearchBooks(bookName: bookName);

    return result.fold((falier) => emit(SearchFailer(falier.errMasessge)),
        (book) => emit(SearchSuccess(book)));
  }
}

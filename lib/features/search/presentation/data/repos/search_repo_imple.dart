import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/core/errors/falier.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRopoImple implements SearchRopo {
  final ApiService apiService;

  SearchRopoImple(this.apiService);
  @override
  Future<Either<Failer, List<BookModel>>> fetchSearchBooks({required String? bookName}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=intitle:$bookName');
      List<BookModel> bookItems = [];

      for (var item in data['items']) {
        bookItems.add(BookModel.fromJson(item));
      }
      return right(bookItems);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioExption(e));
      } else {
        return left(ServerFailer(e.toString()));
      }
    }
  }
}

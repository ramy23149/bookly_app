import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/core/errors/falier.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(
    this.apiService,
  );
  @override
  Future<Either<Failer, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=computerscience');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioExption(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:general&Sorting&=newest ');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      // return left(ServerFailer(e.toString()));
      if (e is DioException) {
        return left(ServerFailer.fromDioExption(e));
      } else {
        return left(ServerFailer(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failer, List<BookModel>>> suggestionBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$category');

      List<BookModel> itemsList = [];

      for (var item in data['items']) {
        itemsList.add(BookModel.fromJson(item));
      }
      return right(itemsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioExption(e));
      } else {
        return left(ServerFailer(e.toString()));
      }
    }
  }
}

import 'dart:convert';

import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/core/errors/falier.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failer, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');

      List<BookModel> books = [];

      for (var item in data['items']) {
        //azay mn model 3la tol??
        books.add(BookModel.fromJson(item));//Book model leh m4 item 3la tol??
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailer());
    }
  }

  @override
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}

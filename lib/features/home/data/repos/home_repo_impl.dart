import 'package:bookly_app/core/errors/falier.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';


class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failer, List<BookModel>>> fetchBestSellerBooks() {
      // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}

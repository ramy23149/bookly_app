import 'package:bookly_app/core/errors/falier.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
Future <Either<Failer ,List<BookModel>>>  fetchBestSellerBooks();
Future <Either<Failer ,List<BookModel>>>  fetchFeaturedBooks();
}

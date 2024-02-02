import 'package:bookly_app/core/errors/falier.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRopo {
  Future<Either<Failer, List<BookModel>>> fetchSearchBooks({required String? bookName});
}

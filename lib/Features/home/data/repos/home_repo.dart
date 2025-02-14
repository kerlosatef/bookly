import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook();
  Future<Either<Failure, List<BookModel>>> fetchSmillerBook(
      {required String category});
  Future<Either<Failure, List<BookModel>>> fetchSearchBook(
      {required String query});
}

import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/Failure.dart';
import 'package:bookly/core/utlis/api_services.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await apiServices.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming");
      final List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook() {
    throw UnimplementedError();
  }
}

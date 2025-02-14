import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/Failure.dart';
import 'package:bookly/core/utlis/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl(this.apiServices);

  // 🔹 دالة عامة لإحضار الكتب من API
  Future<Either<Failure, List<BookModel>>> _fetchBooks(String query) async {
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=$query',
      );

      List<BookModel> books = data['items']
          .map<BookModel>((item) => BookModel.fromJson(item))
          .toList();

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() {
    return _fetchBooks('flutter'); // 🔹 البحث عن كتب Flutter الجديدة
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook() {
    return _fetchBooks('computer science'); // 🔹 البحث عن كتب علوم الحاسب
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSmillerBook(
      {required String category}) {
    return _fetchBooks(category); // 🔹 البحث عن كتب مشابهة حسب الفئة
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBook(
      {required String query}) {
    return _fetchBooks(query); // 🔹 البحث عن الكتب حسب نص المستخدم
  }
}

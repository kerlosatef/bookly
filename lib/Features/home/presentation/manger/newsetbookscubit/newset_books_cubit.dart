import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(NewsetBookLoading());
    var result = await homeRepo.fetchFeaturedBook();
    result.fold(
      (failure) => emit(NewsetBookfailuer(failure.message)),
      (books) => emit(FeaturedBookSuccess(books)),
    );
  }
}

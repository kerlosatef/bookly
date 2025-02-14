import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.homeRepo) : super(SearchBookInitial());
  HomeRepo homeRepo;
  Future<void> fetchSearchBook({required String query}) async {
    emit(SearchBookLoading());
    var result = await homeRepo.fetchSearchBook(query: query);
    result.fold(
      (failure) => emit(SearchBookfailuer(failure.message)),
      (books) => emit(SearchBookSuccess(books)),
    );
  }
}

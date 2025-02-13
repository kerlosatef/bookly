import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'smillerbooks_state.dart';

class SmillerbooksCubit extends Cubit<SmillerbooksState> {
  SmillerbooksCubit(this.homeRepo) : super(SmillerbooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchSmillerBook({required String category}) async {
    emit(SmillerBooksLoading());
    var result = await homeRepo.fetchSmillerBook(category: category);
    result.fold(
      (failure) => emit(SmillerBooksfailuer(failure.message)),
      (books) => emit(SmillerBooksSuccess(books)),
    );
  }
}

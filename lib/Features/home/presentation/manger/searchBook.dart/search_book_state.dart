part of 'search_book_cubit.dart';

abstract class SearchBookState extends Equatable {
  const SearchBookState();

  @override
  List<Object> get props => [];
}

class SearchBookInitial extends SearchBookState {}

class SearchBookSuccess extends SearchBookState {
  final List<BookModel> books;
  const SearchBookSuccess(this.books);
}

class SearchBookLoading extends SearchBookState {}

class SearchBookfailuer extends SearchBookState {
  final String errMessage;
  const SearchBookfailuer(this.errMessage);
}

part of 'newset_books_cubit.dart';

abstract class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBookSuccess extends NewsetBooksState {
  final List<BookModel> books;
  const NewsetBookSuccess(this.books);
}

class NewsetBookLoading extends NewsetBooksState {}

class NewsetBookfailuer extends NewsetBooksState {
  final String errMessage;
  const NewsetBookfailuer(this.errMessage);
}

part of 'smillerbooks_cubit.dart';

abstract class SmillerbooksState extends Equatable {
  const SmillerbooksState();

  @override
  List<Object> get props => [];
}

class SmillerbooksInitial extends SmillerbooksState {}

class SmillerBooksSuccess extends SmillerbooksState {
  final List<BookModel> books;
  const SmillerBooksSuccess(this.books);
}

class SmillerBooksLoading extends SmillerbooksState {}

class SmillerBooksfailuer extends SmillerbooksState {
  final String errMessage;
  const SmillerBooksfailuer(this.errMessage);
}

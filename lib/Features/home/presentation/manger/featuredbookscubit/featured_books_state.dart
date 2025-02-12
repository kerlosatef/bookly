part of 'featured_books_cubit.dart';

abstract class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;
  const FeaturedBookSuccess(this.books);
}

class FeaturedBookLoading extends FeaturedBookState {}

class FeaturedBookfailuer extends FeaturedBookState {
  final String errMessage;
  const FeaturedBookfailuer(this.errMessage);
}

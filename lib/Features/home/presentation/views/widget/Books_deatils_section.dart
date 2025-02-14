import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widget/Book_Rating.dart';
import 'package:bookly/Features/home/presentation/views/widget/Books_action.dart';
import 'package:bookly/Features/home/presentation/views/widget/Custome_book_item.dart';
import 'package:bookly/core/utlis/styels.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .2),
        child: Customebookimage(
          imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
        ),
      ),
      const SizedBox(
        height: 43,
      ),
      Text(
        book.volumeInfo.title,
        style: Styles.textStyle30.copyWith(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 6,
      ),
      Opacity(
        opacity: .7,
        child: Text(
          book.volumeInfo.authors[0],
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Bookrating(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      const SizedBox(
        height: 16,
      ),
      BookAction(
        bookModel: book,
      ),
    ]);
  }
}

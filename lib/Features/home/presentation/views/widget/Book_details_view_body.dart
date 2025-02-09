import 'package:bookly/Features/home/presentation/views/widget/Book_Rating.dart';
import 'package:bookly/Features/home/presentation/views/widget/Books_action.dart';
import 'package:bookly/Features/home/presentation/views/widget/Custom_Book_Details_App_Bar.dart';
import 'package:bookly/Features/home/presentation/views/widget/Custome_book_item.dart';
import 'package:bookly/core/utlis/styels.dart';
import 'package:bookly/core/widget/custome_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: Customebookimage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
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
          BookAction(),
        ],
      ),
    );
  }
}

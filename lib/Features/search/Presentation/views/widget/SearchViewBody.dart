import 'package:bookly/Features/home/presentation/manger/searchBook.dart/search_book_cubit.dart';
import 'package:bookly/Features/search/Presentation/views/widget/Custome_search_text_field.dart';
import 'package:bookly/Features/search/Presentation/views/widget/Search_Result.dart';
import 'package:bookly/core/utlis/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({super.key});
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomSearchTextField(controller: textController),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          ),
          Expanded(child: SearchResult()),
        ],
      ),
    );
  }
}

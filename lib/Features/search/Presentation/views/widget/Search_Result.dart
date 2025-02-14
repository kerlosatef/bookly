import 'package:bookly/Features/home/presentation/manger/newsetbookscubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/searchBook.dart/search_book_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/Newset_Books_List_View_Item.dart';
import 'package:bookly/core/widget/custome_error_widget.dart';
import 'package:bookly/core/widget/custome_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookInitial) {
          return Container();
        } else if (state is SearchBookSuccess) {
          return Expanded(
            // ✅ استخدام Expanded هنا
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is SearchBookfailuer) {
          return CustomeErrorWidget(errmessage: state.errMessage);
        } else {
          return SizedBox(
            // ✅ استبدال SliverToBoxAdapter بـ SizedBox
            height: 50,
            child: CustomeLoading(),
          );
        }
      },
    );
  }
}

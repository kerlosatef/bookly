import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manger/newsetbookscubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/Newset_Books_List_View_Item.dart';
import 'package:bookly/core/widget/Best_saller_loading.dart';
import 'package:bookly/core/widget/custome_error_widget.dart';
import 'package:bookly/core/widget/custome_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellersListView extends StatelessWidget {
  const BestSellersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBookSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetBookfailuer) {
          return CustomeErrorWidget(errmessage: state.errMessage);
        } else {
          return SliverToBoxAdapter(
            child: CustomeLoading(),
          );
        }
      },
    );
  }
}

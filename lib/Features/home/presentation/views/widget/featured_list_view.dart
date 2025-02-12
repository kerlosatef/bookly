import 'package:bookly/Features/home/presentation/manger/featuredbookscubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/Custome_book_item.dart';
import 'package:bookly/core/widget/custome_error_widget.dart';
import 'package:bookly/core/widget/custome_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
        builder: (context, state) {
          if (state is FeaturedBookSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Customebookimage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            );
          } else if (state is FeaturedBookfailuer) {
            return CustomeErrorWidget(
              errmessage: state.errMessage,
            );
          } else {
            return const CustomeLoading();
          }
        },
      ),
    );
  }
}

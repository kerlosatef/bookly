import 'package:bookly/Features/home/presentation/manger/smillerbooks/smillerbooks_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/Custome_book_item.dart';
import 'package:bookly/core/utlis/app_routrs.dart';
import 'package:bookly/core/widget/custome_error_widget.dart';
import 'package:bookly/core/widget/custome_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SillerBookListView extends StatelessWidget {
  const SillerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SmillerbooksCubit, SmillerbooksState>(
      builder: (context, state) {
        if (state is SmillerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRoutes.bookDetailsView,
                          extra: state.books[index]);
                    },
                    child: Customebookimage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              "",
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SmillerBooksfailuer) {
          return CustomeErrorWidget(errmessage: state.errMessage);
        } else {
          return CustomeLoading();
        }
      },
    );
  }
}

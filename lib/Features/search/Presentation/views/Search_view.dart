import 'package:bookly/Features/home/data/repos/Home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/searchBook.dart/search_book_cubit.dart';
import 'package:bookly/Features/search/Presentation/views/widget/SearchViewBody.dart';
import 'package:bookly/core/utlis/service_lacator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBookCubit(getIt.get<HomeRepoImpl>()),
      child: Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}

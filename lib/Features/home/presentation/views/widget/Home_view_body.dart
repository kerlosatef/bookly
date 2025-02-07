import 'package:bookly/Features/home/presentation/views/widget/custom_appBar.dart';
import 'package:bookly/Features/home/presentation/views/widget/custome_list_view_item.dart';
import 'package:bookly/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Column(
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: custom_list_view_item(),
          );
        },
      ),
    );
  }
}

import 'package:bookly/Features/home/presentation/views/widget/custom_appBar.dart';
import 'package:bookly/Features/home/presentation/views/widget/featured_list_view.dart';
import 'package:bookly/core/utlis/styels.dart';
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
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Best Sellers',
                style: Styles.textMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

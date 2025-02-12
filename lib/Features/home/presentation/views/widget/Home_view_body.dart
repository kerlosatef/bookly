import 'package:bookly/Features/home/presentation/views/widget/NewsetbookListView.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_appBar.dart';
import 'package:bookly/Features/home/presentation/views/widget/featured_list_view.dart';
import 'package:bookly/core/utlis/styels.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Newset Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        BestSellersListView(),
      ],
    );
  }
}

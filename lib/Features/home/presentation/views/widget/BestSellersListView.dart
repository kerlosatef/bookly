import 'package:bookly/Features/home/presentation/views/widget/Best_Sellers_List_View_Item.dart';
import 'package:flutter/material.dart';

class BestSellersListView extends StatelessWidget {
  const BestSellersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellersListViewItem(),
        );
      },
    );
  }
}

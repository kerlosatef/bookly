import 'package:bookly/Features/home/presentation/views/widget/Custome_book_item.dart';
import 'package:flutter/material.dart';

class SillerBookListView extends StatelessWidget {
  const SillerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Customebookimage(),
          );
        },
      ),
    );
  }
}

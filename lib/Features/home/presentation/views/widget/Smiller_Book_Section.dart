import 'package:bookly/Features/home/presentation/views/widget/Smiller_Book_List_View.dart';
import 'package:bookly/core/utlis/styels.dart';
import 'package:flutter/material.dart';

class SmillerBookSection extends StatelessWidget {
  const SmillerBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 30,
          ),
          child: SizedBox(height: 120, child: const SillerBookListView()),
        ),
      ],
    );
  }
}

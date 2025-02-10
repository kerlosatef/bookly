import 'package:bookly/Features/home/presentation/views/widget/Books_deatils_section.dart';
import 'package:bookly/Features/home/presentation/views/widget/Custom_Book_Details_App_Bar.dart';
import 'package:bookly/Features/home/presentation/views/widget/Smiller_Book_Section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SmillerBookSection(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

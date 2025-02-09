import 'package:bookly/Features/home/presentation/views/widget/Custom_Book_Details_App_Bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}

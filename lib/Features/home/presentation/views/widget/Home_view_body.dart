import 'package:bookly/Features/home/presentation/views/widget/custom_appBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}

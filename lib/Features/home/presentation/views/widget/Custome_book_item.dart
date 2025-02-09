import 'package:bookly/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class Customebookimage extends StatelessWidget {
  const Customebookimage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}

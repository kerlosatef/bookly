import 'package:flutter/material.dart';

class CustomeLoading extends StatelessWidget {
  const CustomeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

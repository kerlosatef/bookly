import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomeLoading extends StatelessWidget {
  const CustomeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 5, // عدد العناصر اللي بتظهر أثناء التحميل
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: 100, // عرض الـ Container اللي بيمثل الصورة
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

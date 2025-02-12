import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BestSellerLoading extends StatelessWidget {
  const BestSellerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5, // عدد العناصر أثناء التحميل
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Row(
              children: [
                Container(
                  width: 80, // عرض الصورة
                  height: 120, // ارتفاع الصورة
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 14,
                        width: 150,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 40),
                          Container(
                            height: 20,
                            width: 60,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:bookly/core/utlis/assets.dart';
import 'package:bookly/core/utlis/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellersListViewItem extends StatelessWidget {
  const BestSellersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potter and the Philosopher\'s Stone',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 \€',
                      style: Styles.textStyle18,
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.yellow,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      '4.8',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(1000)',
                      style: Styles.textStyle14,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

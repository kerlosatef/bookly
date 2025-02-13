import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widget/Book_Rating.dart';
import 'package:bookly/Features/home/presentation/views/widget/Custome_book_item.dart';
import 'package:bookly/core/utlis/app_routrs.dart';
import 'package:bookly/core/utlis/assets.dart';
import 'package:bookly/core/utlis/styels.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsView, extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              Customebookimage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                aspectRatio: 2.6 / 4,
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
                      bookModel.volumeInfo.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    bookModel.volumeInfo.authors[0],
                    style: Styles.textStyle14.copyWith(
                      fontSize:
                          bookModel.volumeInfo.authors[0].length > 20 ? 12 : 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle18,
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Bookrating(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

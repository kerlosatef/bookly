import 'package:bookly/Features/home/presentation/manger/searchBook.dart/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (value) {
        context.read<SearchBookCubit>().fetchSearchBook(query: value);
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {
            print("Searching for: ${controller.text}"); // 🔹 التأكد من النص
            context
                .read<SearchBookCubit>()
                .fetchSearchBook(query: controller.text); // ✅ تمرير query
          },
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}

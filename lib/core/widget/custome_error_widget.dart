import 'package:flutter/material.dart';

class CustomeErrorWidget extends StatelessWidget {
  const CustomeErrorWidget({super.key, required this.errmessage});
  final String errmessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            size: 40,
            color: Colors.red,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            errmessage,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

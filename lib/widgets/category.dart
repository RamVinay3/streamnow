import 'package:flutter/material.dart';
import 'package:streamnow/color.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.cat,
  });

  final String cat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: const EdgeInsets.only(right: 5, bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: appColors.category, width: 1),
          color: appColors.category,
          borderRadius: BorderRadius.circular(16)),
      child: Text(
        cat,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

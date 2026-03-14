import 'package:flutter/material.dart';
import '../models/category_model.dart';

class CategoryPanel extends StatelessWidget {

  final Category category;

  const CategoryPanel({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: category.items.map((item) {

        return ListTile(
          leading: const Icon(Icons.circle, size: 8),
          title: Text(item),
        );

      }).toList(),
    );
  }
}
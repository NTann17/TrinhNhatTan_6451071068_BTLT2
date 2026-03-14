import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../widgets/category_panel.dart';

class CategoryMenuView extends StatefulWidget {
  const CategoryMenuView({super.key});

  @override
  State<CategoryMenuView> createState() => _CategoryMenuViewState();
}

class _CategoryMenuViewState extends State<CategoryMenuView> {

  List<Category> categories = [

    Category(
      title: "Fruits",
      items: [
        "🍎 Apple",
        "🍌 Banana",
        "🍊 Orange"
      ],
    ),

    Category(
      title: "Vegetables",
      items: [
        "🥕 Carrot",
        "🥦 Broccoli",
        "🌽 Corn"
      ],
    ),

    Category(
      title: "Drinks",
      items: [
        "☕ Coffee",
        "🥤 Soda",
        "🧃 Juice"
      ],
    ),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Category Menu"),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Thêm MSSV dưới AppBar
            const Text(
              "MSSV: 6451071068",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 12),

            const Text(
              "Expansion Menu",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "Using ExpansionPanelList",
              style: TextStyle(color: Colors.black54),
            ),

            const SizedBox(height: 20),

            ExpansionPanelList.radio(
              children: categories.map((category) {
                return ExpansionPanelRadio(
                  value: category.title,
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: Text(category.title),
                    );
                  },
                  body: CategoryPanel(category: category),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            const Text(
              "StatefulWidget Management",
              style: TextStyle(color: Colors.grey),
            )

          ],
        ),
      ),
    );
  }
}
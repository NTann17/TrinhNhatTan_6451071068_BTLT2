import 'package:flutter/material.dart';
import '../utils/food_data.dart';
import '../widget/food_item.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("DANH SÁCH MÓN ĂN"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "MSSV: 6451071068",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return FoodItem(food: foodList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
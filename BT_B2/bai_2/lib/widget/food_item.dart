import 'package:flutter/material.dart';
import '../models/food_model.dart';

class FoodItem extends StatelessWidget {

  final FoodModel food;

  const FoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),

      child: Padding(
        padding: const EdgeInsets.all(10),

        child: Row(
          children: [

            /// Image
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                food.image,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            /// Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    food.description,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    food.price,
                    style: const TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
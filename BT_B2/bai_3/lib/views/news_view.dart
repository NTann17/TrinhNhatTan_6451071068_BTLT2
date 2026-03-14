import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            newsCard(
              "https://picsum.photos/400/200?1",
              "Article Title 1: Flutter is awesome",
              "Learn about cross-platform development with the latest news on Flutter framework updates and community tutorials.",
            ),

            newsCard(
              "https://picsum.photos/400/200?2",
              "Article Title 2: Local Coffee Shop Opens",
              "The cozy new cafe, 'The Daily Grind,' offers local brews and a relaxing atmosphere for customers.",
            ),

            newsCard(
              "https://picsum.photos/400/200?3",
              "Article Title 3: New Tech Gadgets",
              "Discover the newest smartphones, smartwatches, and innovative devices hitting the market this week.",
            ),

          ],
        ),
      ),
    );
  }

  Widget newsCard(String image, String title, String desc) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              image,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  desc,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}
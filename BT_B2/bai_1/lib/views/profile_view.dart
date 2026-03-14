import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../widget/profile_avatar.dart';
import '../utils/app_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {

    UserModel user = UserModel(
      name: "Nguyen Lan Huong",
      email: "lanhuong.nguyen@example.com",
      avatar: "https://i.pravatar.cc/300",
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: AppColors.primary,
        centerTitle: true,

        /// icon góc trái
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("Menu clicked");
          },
        ),

        /// icon góc phải
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              print("Profile icon clicked");
            },
          )
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ProfileAvatar(imageUrl: user.avatar),

            const SizedBox(height: 20),

            Text(
              user.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              user.email,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'MSSV: 6451071068',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey,
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {},
              child: const Text("Edit Profile"),
            )
          ],
        ),
      ),
    );
  }
}
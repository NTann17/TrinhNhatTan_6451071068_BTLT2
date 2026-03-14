import 'package:flutter/material.dart';
import '../views/profile_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      home: const ProfileView(),
    );
  }
}
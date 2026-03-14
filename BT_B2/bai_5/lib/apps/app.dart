import 'package:flutter/material.dart';
import '../views/category_menu_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryMenuView(),
    );
  }
}
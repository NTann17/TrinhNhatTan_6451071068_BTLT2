import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_tile.dart';

class SportStoreView extends StatelessWidget {

  const SportStoreView({super.key});

  @override
  Widget build(BuildContext context) {

    List<Product> products = [

      Product(
        name: "Giày Chạy Bộ Nam",
        price: "950,000đ",
        image: "assets/images/giay_chay_bo_nam.jpg",
      ),

      Product(
        name: "Áo Thun Tập Luyện",
        price: "320,000đ",
        image: "assets/images/ao_thun_tap_luyen.jpg",
      ),

      Product(
        name: "Bóng Đá Thể Thao",
        price: "510,000đ",
        image: "assets/images/bong_da.jpg",
      ),

      Product(
        name: "Áo Khoác Thể Thao",
        price: "600,000đ",
        image: "assets/images/ao_khoac_the_thao.jpg",
      ),

      Product(
        name: "Mũ Lưỡi Trai",
        price: "185,000đ",
        image: "assets/images/mu_luoi_trai.jpg",
      ),

      Product(
        name: "Vớ Thể Thao Cao Cấp",
        price: "95,000đ",
        image: "assets/images/vo_the_thao.jpg",
      ),

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cửa Hàng Thể Thao"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('MSSV: 6451071068', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: products
                  .map((product) => ProductTile(product: product))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:food_app/presentation/widgets/food_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Toko Buah & Sayur",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          size: 32,
        ),
        actions: [
          Icon(
            Icons.search,
            size: 32,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart,
            size: 32,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.8,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
          ),
          children: [
            FoodCard(
                gambar: "kangkung.png",
                harga: "Rp. 2.500",
                jenis: "Bayam",
                jumlah: "1 ikat"),
            FoodCard(
                gambar: "alpukat.png",
                harga: "Rp. 20.000",
                jenis: "Alpukat",
                jumlah: "1 kilogram"),
            FoodCard(
                gambar: "semangka.png",
                harga: "Rp. 46.000",
                jenis: "Semangka",
                jumlah: "1 kilogram"),
            FoodCard(
                gambar: "pisang.png",
                harga: "Rp. 20.000",
                jenis: "Pisang",
                jumlah: "1 sisir"),
            FoodCard(
                gambar: "wortel.png",
                harga: "Rp. 16.000",
                jenis: "Wortel",
                jumlah: "1 kilogram"),
            FoodCard(
                gambar: "strawberry.png",
                harga: "Rp. 34.000",
                jenis: "Strawberry",
                jumlah: "1 kilogram"),
          ],
        ),
      ),
    );
  }
}

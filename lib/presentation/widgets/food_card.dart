import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  String gambar;
  String harga;
  String jenis;
  String jumlah;

  FoodCard({
    super.key,
    required this.gambar,
    required this.harga,
    required this.jenis,
    required this.jumlah,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(255, 216, 216, 216),
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            gambar,
            fit: BoxFit.contain,
            height: 110,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            harga,
            style: TextStyle(
              color: Colors.lightGreen,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            jenis,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            jumlah,
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 6),
          Divider(
            height: 5,
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_shopping_cart_rounded,
                size: 30,
                color: Colors.green,
              ),
              Text(
                "Beli",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.add_circle_rounded),
              SizedBox(
                width: 3,
              ),
              Text("0", style: TextStyle(fontSize: 18)),
              SizedBox(
                width: 3,
              ),
              Icon(Icons.remove_circle_rounded),
            ],
          ),
        ],
      ),
    );
  }
}

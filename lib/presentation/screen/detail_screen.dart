import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget HeaderImage() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Pisang",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            "pisang.png",
            fit: BoxFit.contain,
            width: double.infinity,
            height: 400,
          ),
        ],
      );
    }

    Widget DetailText() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rp. 11.000 / kg",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Sayuran merupakan bahan pangan yang berasal dari tumbuhan yang memiliki kandungan air tinggi, beberapa diantara sayuran tersebut ada yang dapat dikonsumsi langsung tanpa dimasak, Namun ada juga yang memerlukan proses pengolahan terlebih dahulu seperti direbus, dikukus untuk memaksimalkan kandungan gizi yang terdapat didalamnya.",
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    }

    Widget BottomBar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add_circle_rounded,
            size: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Text("0", style: TextStyle(fontSize: 40)),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.remove_circle_rounded,
            size: 50,
          ),
          SizedBox(
            width: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Pesan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Detail",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 32,
          ),
        ),
        actions: [
          Icon(
            Icons.favorite,
            size: 32,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            HeaderImage(),
            SizedBox(
              height: 20,
            ),
            DetailText(),
            SizedBox(
              height: 20,
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}

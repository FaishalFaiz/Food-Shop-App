import 'package:flutter/material.dart';
import 'package:food_app/presentation/screen/detail_screen.dart';
import 'package:food_app/presentation/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailScreen(),
      },
    );
  }
}

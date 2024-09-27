import 'package:flutter/material.dart';
import 'package:newsapp/screens/homescreen.dart';

void main() {
  runApp(const NewsApp());
  // NewsServices(Dio()).getNews();
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

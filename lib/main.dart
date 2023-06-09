import 'package:dwn_app/pages/counter.page.dart';
import 'package:dwn_app/pages/home.page.dart';
import 'package:dwn_app/pages/products.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DwnApp());
}

class DwnApp extends StatelessWidget {
  const DwnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        "/counter": (context) => CounterPage(),
        "/products": (context) => const ProductsPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 22, color: Colors.deepOrange),
            bodyLarge: TextStyle(fontSize: 32, color: Colors.deepOrange),
            bodySmall: TextStyle(fontSize: 18, color: Colors.deepOrange)),
        iconTheme: const IconThemeData(color: Colors.deepOrange, size: 26),
      ),
    );
  }
}

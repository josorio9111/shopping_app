import 'package:flutter/material.dart';
import 'package:shopping_app/cart.dart';
import 'package:shopping_app/home.dart';
import 'package:shopping_app/item.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => const HomePage(),
        "cart": (context) => const CartPage(),
        "item": (context) => const ItemPage(),
      },
    );
  }
}

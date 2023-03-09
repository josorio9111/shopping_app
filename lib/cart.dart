import 'package:flutter/material.dart';
import 'package:shopping_app/widget/cart_appbar.dart';
import 'package:shopping_app/widget/cart_items.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const AppBarCart(),
              Container(
                // height: 700,
                padding: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(children: const [
                  CartitemExample(),
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '\$240.0',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Pagar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

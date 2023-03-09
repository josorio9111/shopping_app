import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: Colors.white,
      child: Row(
        children: [
          const Icon(Icons.sort, size: 30, color: Colors.blueAccent),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'DP Shop',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
          const Spacer(),
          // TODO: Agregar libreria badge
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'cart');
            },
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.blueAccent,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}

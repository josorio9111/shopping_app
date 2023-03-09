import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const Expanded(
          child: Text(
            'Detalles',
            style: TextStyle(fontSize: 24),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 0.68,
      shrinkWrap: true,
      children: List.generate(
          5,
          (index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "item");
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              '-50%',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Icon(Icons.favorite_border, color: Colors.red)
                        ],
                      ),
                      Center(
                        child: Container(
                          width: 120,
                          height: 120,
                          margin: const EdgeInsets.all(5),
                          child: const FlutterLogo(),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Product Title',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black54),
                        ),
                      ),
                      const Text(
                        'Write description',
                        maxLines: 2,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '\$45.90',
                              style: TextStyle(fontSize: 24),
                            ),
                            Icon(Icons.shopping_cart)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}

import 'package:flutter/material.dart';

class CartitemExample extends StatelessWidget {
  const CartitemExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          5,
          (index) => Container(
                height: 110,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Radio(
                        value: "",
                        groupValue: "",
                        activeColor: Colors.blue,
                        onChanged: (value) {}),
                    Container(
                      height: 60,
                      width: 60,
                      margin: const EdgeInsets.only(right: 15),
                      child: const FlutterLogo(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Product Tile',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$55',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black,
                                            spreadRadius: 1)
                                      ]),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 18,
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: const Text('01')),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black,
                                            spreadRadius: 1)
                                      ]),
                                  child: const Icon(
                                    Icons.add,
                                    size: 18,
                                  ),
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              )),
    );
  }
}

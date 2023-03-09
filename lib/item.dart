import 'package:flutter/material.dart';
import 'package:shopping_app/widget/item_appbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const ItemAppBar(),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.elliptical(250, 50),
                    bottomRight: Radius.elliptical(200, 50),
                  ),
                ),
                child: const Center(
                    child: FlutterLogo(
                  size: 200,
                )),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Product Title',
                        style: TextStyle(fontSize: 28),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.favorite, size: 20),
                              Icon(Icons.favorite, size: 20),
                              Icon(Icons.favorite, size: 20),
                              Icon(Icons.favorite, size: 20),
                              Icon(Icons.favorite_border, size: 20)
                            ],
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
                                          color: Colors.black, spreadRadius: 1)
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
                                          color: Colors.black, spreadRadius: 1)
                                    ]),
                                child: const Icon(
                                  Icons.add,
                                  size: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Descipt anksk dnakjs dkans dkm naksmdn mka dnskmnak sdn kas dmkan skdm naks nd",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Size:',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 20),
                          Row(
                              children: List.generate(
                                  5,
                                  (index) => Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.blue,
                                          child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 16,
                                              child: Text('$index')),
                                        ),
                                      )))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Colors:',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 20),
                          Row(
                              children: List.generate(
                                  5,
                                  (index) => Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor:
                                              Colors.primaries.elementAt(index),
                                        ),
                                      )))
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        height: 90,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)
        ], color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '\$120.20',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            TextButton.icon(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_checkout,
                  color: Colors.white,
                ),
                label: const Text(
                  'Add to Card',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/widget/categorias_widget.dart';
import 'package:shopping_app/widget/home_appbar.dart';
import 'package:shopping_app/widget/items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Appbar
              const HomeAppBar(),
              Container(
                padding: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            height: 50,
                            width: 250,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Buscar...'),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.camera_alt,
                            size: 27,
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: const Text(
                        'Categorias',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                    // Lista Categorias
                    const CategoriasWidget(),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: const Text(
                        'Mejores Ventas',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                    // Item Widget
                    const ItemsWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // TODO: Curved_navigation_bar
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {},
          // backgroundColor: Colors.transparent,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Pop"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Pop"),
          ]),
    );
  }
}

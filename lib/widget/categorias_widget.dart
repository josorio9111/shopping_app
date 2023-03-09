import 'package:flutter/material.dart';

class CategoriasWidget extends StatelessWidget {
  const CategoriasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            10,
            (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 40,
                        height: 30,
                        child: FlutterLogo(),
                      ),
                      Text('Zapatos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey))
                    ],
                  ),
                )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaName;
  final String pizzaPrice;
  final dynamic pizzaColor; // MaterialColor (Colors.red, Colors.orange, etc.)
  final String pizzaImagePath;
  final String pizzaProvider;

  const PizzaTile({
    super.key,
    required this.pizzaName,
    required this.pizzaPrice,
    required this.pizzaColor,
    required this.pizzaImagePath,
    required this.pizzaProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[100],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            // etiqueta del precio
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ),
                  decoration: BoxDecoration(
                    color: pizzaColor[200],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: Text(
                    '\$$pizzaPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pizzaColor[800],
                    ),
                  ),
                ),
              ],
            ),

            // imagen
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Image.asset(pizzaImagePath),
            ),

            // nombre
            Text(
              pizzaName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 4),

            // proveedor
            Text(
              pizzaProvider,
              style: TextStyle(color: Colors.grey[600]),
            ),

            // fila inferior
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  const Text(
                    "ADD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
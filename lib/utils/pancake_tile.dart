import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeName;
  final String pancakePrice;
  final dynamic pancakeColor; // MaterialColor
  final String pancakeImagePath;
  final String pancakeProvider;

  const PancakeTile({
    super.key,
    required this.pancakeName,
    required this.pancakePrice,
    required this.pancakeColor,
    required this.pancakeImagePath,
    required this.pancakeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[100],
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
                    color: pancakeColor[200],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: Text(
                    '\$$pancakePrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pancakeColor[800],
                    ),
                  ),
                ),
              ],
            ),

            // imagen
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Image.asset(pancakeImagePath),
            ),

            // nombre
            Text(
              pancakeName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 4),

            // proveedor
            Text(
              pancakeProvider,
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
import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieName;
  final String smoothiePrice;
  final dynamic smoothieColor; // MaterialColor
  final String smoothieImagePath;
  final String smoothieProvider;

  const SmoothieTile({
    super.key,
    required this.smoothieName,
    required this.smoothiePrice,
    required this.smoothieColor,
    required this.smoothieImagePath,
    required this.smoothieProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[100],
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
                    color: smoothieColor[200],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: Text(
                    '\$$smoothiePrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: smoothieColor[800],
                    ),
                  ),
                ),
              ],
            ),

            // imagen
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Image.asset(smoothieImagePath),
            ),

            // nombre
            Text(
              smoothieName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 4),

            // proveedor
            Text(
              smoothieProvider,
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
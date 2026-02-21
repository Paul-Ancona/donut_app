import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerName;
  final String burgerPrice;
  final dynamic burgerColor; // espera MaterialColor (Colors.red, Colors.brown, etc.)
  final String burgerImagePath;
  final String burgerProvider;

  const BurgerTile({
    super.key,
    required this.burgerName,
    required this.burgerPrice,
    required this.burgerColor,
    required this.burgerImagePath,
    required this.burgerProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[100],
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
                    color: burgerColor[200],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: burgerColor[800],
                    ),
                  ),
                ),
              ],
            ),

            // imagen
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Image.asset(burgerImagePath),
            ),

            // nombre
            Text(
              burgerName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 4),

            // proveedor
            Text(
              burgerProvider,
              style: TextStyle(color: Colors.grey[600]),
            ),

            // fila inferior (like + add)
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

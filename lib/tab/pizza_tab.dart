import 'package:donut_app/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  PizzaTab({super.key});

  final List pizzaOnSale = [
    // pizzaName, pizzaPrice, pizzaColor, pizzaImagePath, pizzaProvider
    ['Pepperoni', '120', Colors.red, 'lib/images/pizza_pepperoni.png', 'Dominos'],
    ['Hawaiian', '110', Colors.orange, 'lib/images/pizza_hawaiana.png', 'Pizza Hut'],
    ['4 Cheese', '130', Colors.yellow, 'lib/images/pizza_3quesos.png', "Little Caesars"],
    ['Veggie', '105', Colors.green, 'lib/images/pizza_veg.png', 'Local'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaName: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          pizzaImagePath: pizzaOnSale[index][3],
          pizzaProvider: pizzaOnSale[index][4],
        );
      },
    );
  }
}
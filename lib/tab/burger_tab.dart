import 'package:flutter/material.dart';
import 'package:donut_app/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({super.key});

  final List burgerOnSale = [
    // burgerName, burgerPrice, burgerColor, burgerImagePath, burgerProvider
    ['BBQ Burger', '120', Colors.brown, 'lib/images/BBQ_burger.png', 'Landans'],
    ['Bacon Burger', '140', Colors.red, 'lib/images/bacon_burger.png', 'Burger King'],
    ['Beefy Burger', '120', Colors.brown, 'lib/images/beefy_burger.png', 'Wendys'],
    ['Gourmet Burger', '120', Colors.brown, 'lib/images/caramel_burger.png', 'Horus burger'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerName: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerColor: burgerOnSale[index][2],
          burgerImagePath: burgerOnSale[index][3],
          burgerProvider: burgerOnSale[index][4],
        );
      },
    );
  }
}

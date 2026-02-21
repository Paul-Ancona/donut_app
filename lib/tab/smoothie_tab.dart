import 'package:donut_app/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  SmoothieTab({super.key});

  final List smoothieOnSale = [
    // smoothieName, smoothiePrice, smoothieColor, smoothieImagePath, smoothieProvider
    ['Strawberry', '80', Colors.pink, 'lib/images/smoothie_strawberry.png', 'Jamba'],
    ['Mango', '85', Colors.orange, 'lib/images/smoothie_mango.png', 'Tropical'],
    ['Green', '90', Colors.green, 'lib/images/smoothie_green.png', 'Healthy Bar'],
    ['Blueberry', '88', Colors.blue, 'lib/images/smoothie_blueberry.png', 'Jamba'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieName: smoothieOnSale[index][0],
          smoothiePrice: smoothieOnSale[index][1],
          smoothieColor: smoothieOnSale[index][2],
          smoothieImagePath: smoothieOnSale[index][3],
          smoothieProvider: smoothieOnSale[index][4],
        );
      },
    );
  }
}
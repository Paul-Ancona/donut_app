import 'package:donut_app/utils/pancake_tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  PancakeTab({super.key});

  final List pancakeOnSale = [
    // pancakeName, pancakePrice, pancakeColor, pancakeImagePath, pancakeProvider
    ['Classic', '90', Colors.brown, 'lib/images/pancake_tradicional.png', 'IHOP'],
    ['Blueberry', '105', Colors.blue, 'lib/images/pancake_blueberry.png', 'Dennys'],
    ['Chocolate', '110', Colors.deepOrange, 'lib/images/pancake_chocolate.png', 'Starbucks'],
    ['Banana', '95', Colors.yellow, 'lib/images/pancake_banana.png', 'Local'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakeOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeName: pancakeOnSale[index][0],
          pancakePrice: pancakeOnSale[index][1],
          pancakeColor: pancakeOnSale[index][2],
          pancakeImagePath: pancakeOnSale[index][3],
          pancakeProvider: pancakeOnSale[index][4],
        );
      },
    );
  }
}
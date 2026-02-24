import 'package:donut_app/tab/burger_tab.dart';
import 'package:donut_app/tab/donut_tab.dart';
import 'package:donut_app/tab/pancake_tab.dart';
import 'package:donut_app/tab/pizza_tab.dart';
import 'package:donut_app/tab/smoothie_tab.dart';
import 'package:flutter/material.dart';
import 'package:donut_app/utils/my_tab.dart';
import 'package:provider/provider.dart';

import '../models/cart_model.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget> myTabs = [
  const MyTab(iconPath: 'lib/icons/donut.png', iconName: 'Donut'),
  const MyTab(iconPath: 'lib/icons/burger.png', iconName: 'Burger'),
  const MyTab(iconPath: 'lib/icons/smoothie.png', iconName: 'Smoothie'),
  const MyTab(iconPath: 'lib/icons/pancakes.png', iconName: 'Pancake'),
  const MyTab(iconPath: 'lib/icons/pizza.png', iconName: 'Pizza'),
];

class _HomePageState extends State<HomePage> {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person, color: Colors.grey[800]),
            ),
          ],
        ),
        body: Column(
          children: [
            // 1. Texto principal
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: const [
                  Text('I want to ', style: TextStyle(fontSize: 24)),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 24),

            // 2. Pestañas (TabBar)
            TabBar(tabs: myTabs),

            // 3. Contenido de las pestañas
            Expanded(
              child: TabBarView(
                //controller: _tabController,
                children: [
                  DonutTab(),
                  BurgerTab(),
                  PancakeTab(),
                  SmoothieTab(),
                  PizzaTab(),
                ],
              ),
            ),

            // 4. Barra inferior (carrito)
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${cart.totalItems} Items | \$${cart.totalPrice.toStringAsFixed(0)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          'Delivery Charges Included',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const CartPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[400],
                    ),
                    child: const Text(
                      'view cart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
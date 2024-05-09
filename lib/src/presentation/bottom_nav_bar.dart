import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GNav(
          color: const Color.fromARGB(255, 175, 29, 29),
          activeColor: Colors.blueGrey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange!(value),
          tabBorderRadius: 16,
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'HOME',
            ),
            GButton(
              icon: Icons.car_rental,
              text: 'CARS',
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              text: 'CART',
            ),
          ],
        ),
      ),
    );
  }
}

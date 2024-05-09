import 'package:flutter/material.dart';
import 'package:yeni_yeni_proje/src/core/constants/app_colors.dart';
import 'package:yeni_yeni_proje/src/presentation/bottom_nav_bar.dart';
import 'package:yeni_yeni_proje/src/presentation/car_list_view.dart';
import 'package:yeni_yeni_proje/src/presentation/cart_page.dart';
import 'package:yeni_yeni_proje/src/presentation/real_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index

  //when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    final page = _pages[index];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //rent page

    const MyRealHomePage(),
    const CarListView(),
    const CartPage(),
    //cart page
    //const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: MyRealHomePage(),
    );
  }
}

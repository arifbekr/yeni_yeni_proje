import 'package:flutter/material.dart';
import 'package:yeni_yeni_proje/src/core/constants/app_colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sepetim'),
        backgroundColor: AppColors.appbarcolor,
      ),
      body: Column(),
    );
  }
}

//                    Image.network(
//                       car.image,
//                       height: 210.h,
//                       width: 375.w,
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
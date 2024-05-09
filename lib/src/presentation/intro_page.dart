import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yeni_yeni_proje/src/core/components/button/custom_button.dart';
import 'package:yeni_yeni_proje/src/core/constants/app_colors.dart';
import 'package:yeni_yeni_proje/src/presentation/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                //logo
                Padding(
                  padding: EdgeInsets.only(
                    left: 80.w,
                    right: 80.w,
                    top: 80.w,
                  ),
                  child: Image.network(
                    'https://img.freepik.com/free-vector/vector-cars-collection-vehicles-flat-style_1284-44161.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                const Spacer(),

                //title
                const Text(
                  'Cars For Sale',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                24.verticalSpace,

                //subtitle
                const Text(
                  'Conveniently Buy The Car You Want',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),

                //start now button
                const Spacer(
                  flex: 1,
                ),
                CustomButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  ),
                  title: 'BUY A CAR NOW',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

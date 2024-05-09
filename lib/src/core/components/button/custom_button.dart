import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yeni_yeni_proje/src/core/constants/app_colors.dart';
import 'package:yeni_yeni_proje/src/presentation/home_page.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String title;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 199, 216, 15),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

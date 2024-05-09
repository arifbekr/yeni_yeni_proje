import 'package:flutter/material.dart';
import 'package:yeni_yeni_proje/src/core/components/tiles/car_list_title.dart';
import 'package:yeni_yeni_proje/src/core/constants/app_colors.dart';
import 'package:yeni_yeni_proje/src/data/car_data.dart';

class CarListView extends StatefulWidget {
  const CarListView({super.key});

  @override
  State<CarListView> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarListView> {
  final carList = CarData().carList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İlanlar'),
        backgroundColor: AppColors.appbarcolor,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 5),
        child: SafeArea(
          child: ListView.separated(
            itemCount: carList.length,
            itemBuilder: (context, index) {
              final car = carList[index];
              return CarListTitle(car: car, index: index);
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yeni_yeni_proje/src/data/car_data.dart';
import 'package:yeni_yeni_proje/src/presentation/car_list_view.dart';

class CarListTitle extends StatelessWidget {
  const CarListTitle({
    super.key,
    required this.car,
    required this.index,
  });
  final CarModel car;
  final int index;
  @override
  Widget build(BuildContext context) {
    final carlist = CarData().carList;
    void showBottomSheet() {
      showModalBottomSheet(
          context: context,
          showDragHandle: true,
          backgroundColor: const Color.fromARGB(255, 114, 160, 181),
          elevation: 0,
          builder: (context) {
            return Container(
              width: double.infinity,
              height: 600.h,
              color: const Color.fromARGB(255, 114, 160, 181),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselSlider(
                      items: car.imageList
                          .map(
                            (carItem) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Container(
                                child: Image.network(
                                  carItem.toString(),
                                  fit: BoxFit.cover,
                                  height: 210.h,
                                  width: 375.w,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                        height: 200.w,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 2),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        viewportFraction: 0.8,
                        enlargeCenterPage: true,
                      ),
                    ),
                    Text(
                      car.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text('Model: ' + car.model),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text('Km: ' + car.km),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text('Fiyat: ' + car.price),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text('Yıl: ' + car.year),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text(car.color),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text(car.enginepower),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text(car.fuel),
                    SizedBox(
                      height: 20.w,
                    ),
                    Text(car.transmission),
                    SizedBox(
                      height: 20.w,
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return GestureDetector(
      onTap: showBottomSheet,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  car.image,
                  height: 80.h,
                  width: 120.w,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.network(
                      'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg',
                      height: 80.h,
                      width: 120.w,
                      fit: BoxFit.cover,
                    );
                  },
                ),
                10.horizontalSpace,
                //! column
                Expanded(
                  child: Container(
                    height: 80.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          car.name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Text(
                          car.year,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 82, 80, 80)),
                        ),
                        Text(car.km),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                //! column
              ],
            ),
          ),
          // Text(car.model),
          Positioned(
            right: 10.w,
            bottom: 5.w,
            child: Text(
              car.price,
              style: TextStyle(
                  color: Color.fromARGB(255, 34, 96, 213),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

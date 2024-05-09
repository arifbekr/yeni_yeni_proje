import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yeni_yeni_proje/src/core/constants/app_colors.dart';
import 'package:yeni_yeni_proje/src/data/car_data.dart';

class MyRealHomePage extends StatelessWidget {
  const MyRealHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final carlist = CarData().carList;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sahibinden',
          textAlign: TextAlign.start,
        ),
        backgroundColor: AppColors.appbarcolor,
      ),
      body: Column(
        children: [
          //arama çubuğu

          SearchBar(),

          //kaydırgaç
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: CarouselSlider(
              items: (carlist.sublist(0, 5)).map((e) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Stack(
                    children: [
                      Image.network(
                        e.image,
                        height: 200.h,
                        width: 400.w,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2,
                              sigmaY: 2,
                            ),
                            child: Container(
                              width: 400.w,
                              color: Colors.white.withOpacity(.5),
                              child: Text(
                                e.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.w,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayCurve: Curves.fastOutSlowIn,
                viewportFraction: 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class carouselItems {
  final String name;
  final String image;

  carouselItems({
    required this.name,
    required this.image,
  });
}

//
class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String query = '';

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
      child: TextField(
        onChanged: onQueryChanged,
        decoration: const InputDecoration(
          labelText: 'Kelime ile arayın',
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

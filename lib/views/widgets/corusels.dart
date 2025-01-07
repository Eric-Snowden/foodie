import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/data/dummy.data.dart';
import 'package:foodie/views/widgets/carousel.stack.dart';

class Corousels extends StatefulWidget {
  const Corousels({super.key});

  @override
  State<Corousels> createState() => _CorouselsState();
}

class _CorouselsState extends State<Corousels> {
  final List<Widget> imgSlider = meals
      .map(
        (item) => Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: const Offset(10, 10)),
              ],
              borderRadius: BorderRadius.circular(18.r)),
          child: CarouselStack(
            item: item,
          ),
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430.h,
      child: CarouselSlider(
        items: imgSlider,
        options: CarouselOptions(
          autoPlay: false,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          height: 380.h,
          viewportFraction: 0.5,
        ),
      ),
    );
  }
}

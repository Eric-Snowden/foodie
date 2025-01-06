import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/data/constants.dart';
import 'package:foodie/data/dummy.data.dart';
import 'package:foodie/domain/domain_controller.dart';

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
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                item.image,
                fit: BoxFit.cover,
                width: 300.w,
              ),
              Positioned(
                top: 10.h,
                left: 0,
                right: 0,
                child: Container(
                  height: 550.h,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      8.hs,
                      Text(
                        item.name,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      5.hs,
                      Text(
                        item.subName,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorUtils.getColorFromHex('ACACAC'),
                        ),
                      ),
                      7.hs,
                      Text(
                        '\$ ${item.price}',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: ColorUtils.getColorFromHex('FF6B01'),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 5.w,
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/heart.png',
                    width: 25.w,
                  ),
                ),
              ),
              Positioned(
                bottom: -25,
                left: 0.0,
                right: 0.0,
                child: Container(
                  height: 60.h,
                  width: 60.w,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: Image.asset(
                    'assets/images/back 2.png',
                    width: 25.w,
                  ),
                ),
              ),
            ],
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

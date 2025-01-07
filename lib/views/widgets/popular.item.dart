import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/data/constants.dart';
import 'package:foodie/domain/domain_controller.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    super.key,
    required this.img,
    required this.name,
    required this.subName,
    required this.price,
  });
  final String img;
  final String name;
  final String subName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100.h,
          width: 181.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(10, 10),
                ),
              ]),
          child: Row(
            children: [
              Image.asset(
                'assets/images/$img.png',
                width: 75.w,
              ),
              5.ws,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  3.hs,
                  Text(
                    subName,
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorUtils.getColorFromHex('6D6D6D'),
                    ),
                  ),
                  20.hs,
                  Text(
                    '\$ $price',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorUtils.getColorFromHex('FF6B01'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

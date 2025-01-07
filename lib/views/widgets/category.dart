import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/data/constants.dart';
import 'package:foodie/domain/domain_controller.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.img,
    required this.name,
  });
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 131.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        color: ColorUtils.getColorFromHex('FCE6D9'),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          4.ws,
          Image.asset(
            'assets/images/$img.png',
            width: 30.w,
          ),
          8.ws,
          Text(
            name,
            style: TextStyle(
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}

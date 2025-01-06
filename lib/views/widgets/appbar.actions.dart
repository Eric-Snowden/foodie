import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AppBarActions extends StatelessWidget {
  AppBarActions({
    super.key,
    required this.img,
    required this.width,
    required this.onTap,
    this.color,
  });

  final String img;
  final double width;
  final VoidCallback onTap;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Image.asset(
          'assets/images/$img.png',
          fit: BoxFit.cover,
          width: width.w,
        ),
      ),
    );
  }
}

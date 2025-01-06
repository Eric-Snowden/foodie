import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Your constants
Color bgColor = Colors.white;

// Extensions for ScreenUtil-based SizedBoxes
extension SizeExtensions on num {
  // For a SizedBox with width using ScreenUtil
  SizedBox get ws => SizedBox(width: w);

  // For a SizedBox with height using ScreenUtil
  SizedBox get hs => SizedBox(height: h);

  // // Use ScreenUtil's scaling for width and height
  // double get w => ScreenUtil().setWidth(toDouble());
  // double get h => ScreenUtil().setHeight(toDouble());
  // double get r => ScreenUtil().set
}

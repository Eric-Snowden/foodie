import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/data/constants.dart';
import 'package:foodie/domain/domain_controller.dart';

class SearchAndFilter extends StatefulWidget {
  const SearchAndFilter({super.key});

  @override
  State<SearchAndFilter> createState() => _SearchAndFilterState();
}

class _SearchAndFilterState extends State<SearchAndFilter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Search bar
        12.ws,
        Expanded(
          child: Container(
            height: 69.h,
            width: 242.w,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 223, 222, 222),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 35.w,
                ),
                8.ws,
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        24.ws,
        // Filter button
        Container(
          height: 69.h,
          width: 69.w,
          decoration: BoxDecoration(
            color: ColorUtils.getColorFromHex('FF6B01'),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: IconButton(
            icon: Image.asset(
              'assets/images/settings.png',
              width: 30.w,
            ),
            onPressed: () {
              // Handle filter button press
            },
          ),
        ),
        8.ws,
      ],
    );
  }
}

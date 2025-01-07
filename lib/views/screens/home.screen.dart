import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/data/constants.dart';
import 'package:foodie/domain/domain_controller.dart';
import 'package:foodie/views/widgets/appbar.actions.dart';
import 'package:foodie/views/widgets/categories.dart';
import 'package:foodie/views/widgets/corusels.dart';
import 'package:foodie/views/widgets/popular.items.dart';
import 'package:foodie/views/widgets/search.and.filter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: AppBarActions(
          onTap: () {},
          img: 'menus 1',
          width: 30,
        ),
        actions: [
          AppBarActions(
            onTap: () {},
            img: 'Mask group',
            width: 40,
            color: ColorUtils.getColorFromHex('FF6B01'),
          ),
          15.ws,
        ],
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 23.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            20.hs,
            const SearchAndFilter(),
            20.hs,
            const Categories(),
            20.hs,
            const Corousels(),
            20.hs,
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  Text(
                    'Popular Items',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.w,
              ),
              child: const PopularItems(),
            ),
            20.hs,
          ],
        ),
      ),
    );
  }
}

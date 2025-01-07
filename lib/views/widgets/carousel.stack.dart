// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/data/constants.dart';
import 'package:foodie/data/models/meal.dart';
import 'package:foodie/data/providers/favorite.meal.provider.dart';
import 'package:foodie/domain/domain_controller.dart';
import 'package:foodie/views/widgets/arrow.circle.dart';

class CarouselStack extends ConsumerWidget {
  const CarouselStack({
    super.key,
    required this.item,
  });

  final Meal item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);
    final isFavorite = favoriteMeals.contains(item);

    return Stack(
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
          child: GestureDetector(
            onTap: () {
              ref
                  .read(favoriteMealsProvider.notifier)
                  .toggleFavoriteMeals(item);
            },
            child: Container(
              height: 30.h,
              width: 30.w,
              alignment: Alignment.center,
              child: Icon(
                Icons.favorite,
                color: isFavorite
                    ? Colors.red
                    : ColorUtils.getColorFromHex('ACACAC'), // Change color
                size: 25.w,
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: -25,
          left: 0.0,
          right: 0.0,
          child: ArrowCircle(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodie/data/constants.dart';
import 'package:foodie/views/widgets/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          12.ws,
          const Category(
            img: 'eat',
            name: ' Vegetarian',
          ),
          12.ws,
          const Category(
            img: 'hamburger',
            name: ' Fast Food',
          ),
          12.ws,
          const Category(
            img: 'ice-cream-cone',
            name: 'Ice-cream',
          ),
        ],
      ),
    );
  }
}

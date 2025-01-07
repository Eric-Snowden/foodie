import 'package:flutter/material.dart';
import 'package:foodie/data/constants.dart';
import 'package:foodie/views/widgets/popular.item.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: [
          const PopularItem(
            img: 'image 6',
            name: 'Prawn mix Rice',
            price: 8.99,
            subName: 'Rice',
          ),
          10.ws,
          const PopularItem(
            img: 'image 4',
            name: 'Burger',
            price: 5.99,
            subName: 'Fast Food',
          ),
          10.ws,
          const PopularItem(
            img: 'image 3',
            name: 'Prawn mix Rice',
            price: 8.99,
            subName: 'Rice',
          ),
          10.ws,
        ],
      ),
    );
  }
}

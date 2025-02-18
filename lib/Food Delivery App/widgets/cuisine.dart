// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../models/cuisine.dart';

Widget foodlist(
  BuildContext context,
  Cuisine food,
) {
  return SizedBox(
      height: 100,
      width: 95,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(5),
              height: 85,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ThemeData().colorScheme.onSecondary,
              ),
              child: Column(
                children: [
                  Image.asset(food.foodImage, height: 55, width: 35),
                  Text(
                    food.foodName,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              )),
        ],
      ));
}

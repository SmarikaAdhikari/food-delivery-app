// ignore_for_file: deprecated_member_use

import 'package:awakened_devs_tasks/constants/theme.dart';
import 'package:flutter/material.dart';

import '../models/cuisine.dart';

Widget foodlist(
  Cuisine food,
) {
  return SizedBox(
      height: 100,
      width: 95,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(5),
              height: 83,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:ThemeData().colorScheme.onSecondary,
              ),
              child: Column(
                children: [
                  Image.asset(food.foodImage, height: 50, width: 35),
                  const SizedBox(height: 5),
                  Text(
                    food.foodName,
                    style: appTheme.textTheme.caption,
                  ),
                ],
              )),
        ],
      ));
}

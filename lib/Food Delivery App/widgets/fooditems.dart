// ignore_for_file: library_private_types_in_public_api

import 'package:awakened_devs_tasks/Food%20Delivery%20App/models/fooditems.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cartmodel.dart';

class FoodItemWidget extends StatefulWidget {
  final Fooditems item;

  const FoodItemWidget({super.key, required this.item});

  @override
  _FoodItemWidgetState createState() => _FoodItemWidgetState();
}

class _FoodItemWidgetState extends State<FoodItemWidget> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = favoriteItems.contains(widget.item);
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        if (!favoriteItems.contains(widget.item)) {
          favoriteItems.add(widget.item);
        }
      } else {
        favoriteItems.remove(widget.item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: InkWell(
                  onTap: toggleFavorite,
                  child: Icon(
                    Icons.favorite,
                    color: isFavorite ? Colors.red : Colors.grey.shade300,
                  ),
                ),
              ),
              Image.asset(widget.item.image, height: 110, width: 160),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            widget.item.name,
            style: Theme.of(context).textTheme.titleMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            widget.item.description,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                "\$${widget.item.price}",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  // Access the CartModel and add the item to the cart
                  final cart = Provider.of<CartModel>(context, listen: false);
                  cart.addItem(widget.item);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('${widget.item.name} added to cart')),
                  );
                },
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(248, 194, 246, 72),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "+",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<Fooditems> favoriteItems = [];

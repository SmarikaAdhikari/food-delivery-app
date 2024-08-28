// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cartmodel.dart';
import '../models/favoritemodel.dart';
import '../models/fooditems.dart';
import '../screens/productpage.dart';

class FoodItemWidget extends StatefulWidget {
  final Fooditems item;

  const FoodItemWidget({super.key, required this.item});

  @override
  _FoodItemWidgetState createState() => _FoodItemWidgetState();
}

class _FoodItemWidgetState extends State<FoodItemWidget> {
  @override
  Widget build(BuildContext context) {
    final favoritesModel = Provider.of<FavoritesModel>(context);
    final isFavorite = favoritesModel.isFavorite(widget.item);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
       color:Theme.of(context).colorScheme.onSecondary,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductdetailsPage(item: widget.item),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      favoritesModel.toggleFavorite(widget.item);
                    },
                    child: Icon(
                      Icons.favorite,
                      color: isFavorite ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.outline,
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
                    final cart = Provider.of<CartModel>(context, listen: false);
                    cart.addItem(widget.item);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${widget.item.name} added to cart'),
                      ),
                    );
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color:Theme.of(context).colorScheme.onPrimary,
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
      ),
    );
  }
}

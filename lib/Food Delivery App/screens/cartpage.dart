import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cartmodel.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final item = cart.items[index];
          return Card(
            child: ListTile(
              title: Text(item.name),
              subtitle: Text("\$${item.price}"),
            ),
          );
        },
      ),
    );
  }
}

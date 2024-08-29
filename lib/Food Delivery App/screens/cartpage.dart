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
        title: const Text('Cart Items', style: TextStyle(color: Colors.black)),
      ),
      body: cart.items.isEmpty
          ? const Center(child: Text('No items'))
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.onSurface,
                        offset: const Offset(0, 2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 70,
                          child: Image.asset(
                            item.image,
                          )),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name),
                          Text("\$${item.price}"),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          cart.removeItem(item);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}

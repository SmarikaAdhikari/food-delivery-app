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
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 2),
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
                Column(
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

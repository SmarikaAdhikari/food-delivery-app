import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/favoritemodel.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesModel = Provider.of<FavoritesModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites Items',
            style: TextStyle(color: Colors.black)),
      ),
      body: favoritesModel.favoriteItems.isEmpty
          ? const Center(child: Text('No favorite items'))
          : ListView.builder(
              itemCount: favoritesModel.favoriteItems.length,
              itemBuilder: (context, index) {
                final item = favoritesModel.favoriteItems[index];
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
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
                    favoritesModel.toggleFavorite(item);
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

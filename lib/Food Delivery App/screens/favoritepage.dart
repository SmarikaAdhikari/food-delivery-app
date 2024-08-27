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
        title: const Text('Favorites'),
      ),
      body: favoritesModel.favoriteItems.isEmpty
          ? const Center(child: Text('No favorite items'))
          : ListView.builder(
              itemCount: favoritesModel.favoriteItems.length,
              itemBuilder: (context, index) {
                final item = favoritesModel.favoriteItems[index];
                return ListTile(
                  leading: Image.asset(item.image, height: 50, width: 50),
                  title: Text(item.name),
                  subtitle: Text("\$${item.price}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle),
                    onPressed: () {
                      favoritesModel.toggleFavorite(item);
                    },
                  ),
                );
              },
            ),
    );
  }
}

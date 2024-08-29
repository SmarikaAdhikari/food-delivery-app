import 'package:awakened_devs_tasks/Food%20Delivery%20App/screens/cartpage.dart';
import 'package:awakened_devs_tasks/Food%20Delivery%20App/screens/favoritepage.dart';
import 'package:awakened_devs_tasks/Food%20Delivery%20App/screens/homepage.dart';
import 'package:awakened_devs_tasks/Food%20Delivery%20App/screens/profilepage.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationpageState();
}

class _BottomNavigationpageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  final screens = [
    const HomePage(),
    const FavoritesPage(),
    const ProfilePage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/home.png')), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/favourite.png')), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/list.png')), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/cart.png')), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/person.png')), label: ""),
        ],
      ),
    );
  }
}

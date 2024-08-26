import 'package:awakened_devs_tasks/Food%20Delivery%20App/screens/cartpage.dart';
import 'package:awakened_devs_tasks/Food%20Delivery%20App/screens/homepage.dart';
import 'package:awakened_devs_tasks/Food%20Delivery%20App/screens/productpage.dart';
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
    const ProductdetailsPage(),
    const ProductdetailsPage(),
    const CartPage(),
    const ProductdetailsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
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

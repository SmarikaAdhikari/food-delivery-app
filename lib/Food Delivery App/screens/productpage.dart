import 'package:flutter/material.dart';

class ProductdetailsPage extends StatefulWidget {
  const ProductdetailsPage({super.key});

  @override
  State<ProductdetailsPage> createState() => _ProductdetailsPageState();
}

class _ProductdetailsPageState extends State<ProductdetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
    );
  }
}

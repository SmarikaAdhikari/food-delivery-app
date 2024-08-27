// ignore_for_file: deprecated_member_use

import 'package:awakened_devs_tasks/Food%20Delivery%20App/models/fooditems.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../constants/theme.dart';
import 'cartpage.dart';

class ProductdetailsPage extends StatefulWidget {
  const ProductdetailsPage({super.key, required this.item});
  final Fooditems item;

  @override
  State<ProductdetailsPage> createState() => _ProductdetailsPageState();
}

class _ProductdetailsPageState extends State<ProductdetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        body: Stack(children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.grey,
                              )),
                        ),
                        Text("Details",
                            style: Theme.of(context).textTheme.titleLarge),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Center(
                                  child: Icon(
                                Icons.my_location_outlined,
                                color: Colors.grey,
                              ))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 240, 240, 240),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(widget.item.image)),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      widget.item.name,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.location_on,
                            color: Color.fromARGB(248, 194, 246, 72)),
                        const SizedBox(width: 5),
                        Text(widget.item.location,
                            style: appTheme.textTheme.bodyMedium),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 80,
                      width: 390,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15, top: 5, bottom: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              measures(
                                  context, widget.item.kcal.toDouble(), "kcal"),
                              VerticalDivider(
                                color: Colors.grey[300],
                                thickness: 1,
                              ),
                              measures(context, widget.item.proteins.toDouble(),
                                  "proteins"),
                              VerticalDivider(
                                color: Colors.grey[300],
                                thickness: 1,
                              ),
                              measures(
                                  context, widget.item.fats.toDouble(), "fat"),
                              VerticalDivider(
                                color: Colors.grey[300],
                                thickness: 1,
                              ),
                              measures(context, widget.item.carbo.toDouble(),
                                  "carbo"),
                            ]),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("Description",
                        style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: 10),
                    ReadMoreText(
                      widget.item.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                      trimLines: 3,
                      colorClickableText: Colors.grey,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'See more',
                      trimExpandedText: 'Show less',
                    ),
                    const SizedBox(height: 110),
                  ]),
            ),
          ),
          buynow(context),
        ]));
  }

  Positioned buynow(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 70,
        width: 390,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const ImageIcon(
                  AssetImage("images/cart.png"),
                  color: Colors.black,
                ),
              ),
            ),
            Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(248, 194, 246, 72),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                    child:
                        Text("Buy Now", style: appTheme.textTheme.titleMedium)))
          ],
        ),
      ),
    );
  }

  Column measures(BuildContext context, double value, String measure) {
    return Column(
      children: [
        Text(value.toString(), style: Theme.of(context).textTheme.bodyLarge),
        Text(measure, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}

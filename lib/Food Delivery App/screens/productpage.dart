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
        backgroundColor:  Theme.of(context).colorScheme.background,
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
                              decoration: BoxDecoration(
                                  color:Theme.of(context).colorScheme.onSecondary, shape: BoxShape.circle),
                              child:  Icon(
                                Icons.arrow_back_ios,
                                color: Theme.of(context).colorScheme.onBackground,
                              )),
                        ),
                        Text("Details",
                            style: Theme.of(context).textTheme.titleLarge),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration:  BoxDecoration(
                                 color:Theme.of(context).colorScheme.onSecondary, shape: BoxShape.circle),
                              child: Center(
                                  child: Icon(
                                Icons.my_location_outlined,
                                   color: Theme.of(context).colorScheme.onBackground,
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
                      decoration: BoxDecoration(
                        color:  Theme.of(context).colorScheme.background,
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
                     Icon(Icons.location_on,
                            color:Theme.of(context).colorScheme.onPrimary),
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
                      decoration: BoxDecoration(
                       color:Theme.of(context).colorScheme.onSecondary,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                                color: Theme.of(context).colorScheme.outline,
                                thickness: 1,
                              ),
                              measures(context, widget.item.proteins.toDouble(),
                                  "proteins"),
                              VerticalDivider(
                                  color: Theme.of(context).colorScheme.outline,
                                thickness: 1,
                              ),
                              measures(
                                  context, widget.item.fats.toDouble(), "fat"),
                              VerticalDivider(
                                   color: Theme.of(context).colorScheme.outline,
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
                      colorClickableText:  Theme.of(context).colorScheme.onSurface,
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
        decoration:  BoxDecoration(
          color:Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.only(
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
                decoration: BoxDecoration(
                    color:Theme.of(context).colorScheme.onSecondary, shape: BoxShape.circle),
                child: ImageIcon(
                  const AssetImage("images/cart.png"),
                  color: Theme.of(context).colorScheme.scrim,
                ),
              ),
            ),
            Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color:  Theme.of(context).colorScheme.onPrimary,
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

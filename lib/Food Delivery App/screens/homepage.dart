// ignore_for_file: deprecated_member_use

import 'package:awakened_devs_tasks/Food%20Delivery%20App/widgets/fooditems.dart';
import 'package:flutter/material.dart';
import '../models/cuisine.dart';
import '../models/fooditems.dart';
import '../widgets/cuisine.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearching = false;
  List<Fooditems> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = fooditem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              appBar(),
              const SizedBox(height: 20),
              onboard(),
              const SizedBox(height: 20),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cuisine.length,
                  itemBuilder: (context, index) => foodlist(
                    context,
                    cuisine[index],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Recommended for you",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const Spacer(),
                  Text(
                    " See More",
                    style: TextStyle(
                      fontSize: 13.0,
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).colorScheme.outline,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                padding: const EdgeInsets.all(5),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  childAspectRatio: 2.3 / 3,
                ),
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return FoodItemWidget(item: filteredItems[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isSearching
            ? Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search,
                          color: Theme.of(context).colorScheme.onSurface),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          autofocus: true,
                          decoration: const InputDecoration(
                            hintText: "Search for restaurants or food...",
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            setState(() {
                              filteredItems = fooditem
                                  .where((item) => item.name
                                      .toLowerCase()
                                      .contains(value.toLowerCase()))
                                  .toList();
                            });
                          },
                          onSubmitted: (value) {
                            setState(() {
                              isSearching = false;
                            });
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.close,
                            color: Theme.of(context).colorScheme.onSurface),
                        onPressed: () {
                          setState(() {
                            isSearching = false;
                            filteredItems = fooditem;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              )
            : InkWell(
                onTap: () {
                  setState(() {
                    isSearching = true;
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSecondary,
                      shape: BoxShape.circle),
                  child: Image.asset("images/search.png",
                      height: 20,
                      width: 20,
                      color: ThemeData().colorScheme.outline),
                ),
              ),
        if (!isSearching) ...[
          Column(
            children: [
              Text("Location", style: Theme.of(context).textTheme.displaySmall),
              Row(
                children: [
                  Icon(Icons.location_on,
                      color: Theme.of(context).colorScheme.onPrimary),
                  const SizedBox(width: 5),
                  Text(
                    "Naperville, Illinois",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(width: 5),
                  Image.asset('images/ios-arrow-down-4.png', height: 18),
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
                shape: BoxShape.circle),
            child: InkWell(
                onTap: () {},
                child: Center(
                    child: Badge(
                        label: Text("3",
                            style: Theme.of(context).textTheme.titleSmall),
                        child: Image.asset('images/notification.png',
                            height: 30,
                            color: ThemeData().colorScheme.outline)))),
          ),
        ]
      ],
    );
  }

  Container onboard() {
    return Container(
        height: 175,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " Free Delivery For",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      " Spaghetti",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      " Up to 3 times per day",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 25),
                    Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text(
                          "Order Now",
                          style: Theme.of(context).textTheme.displaySmall,
                        )))
                  ]),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  "pictures/spaghetti.png",
                  height: 105,
                  width: 105,
                ),
              ),
            ),
          ],
        ));
  }
}

// ignore_for_file: deprecated_member_use

import 'package:awakened_devs_tasks/Food%20Delivery%20App/widgets/fooditems.dart';
import 'package:awakened_devs_tasks/constants/theme.dart';
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
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
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
                    cuisine[index],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text("Recommended for you",
                      style: appTheme.textTheme.bodyText1),
                  const Spacer(),
                  Text(
                    " See all",
                    style: appTheme.textTheme.bodyMedium,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.grey),
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
                        icon: const Icon(Icons.close, color: Colors.grey),
                        onPressed: () {
                          setState(() {
                            isSearching = false;
                            filteredItems = fooditem; // Reset the filter
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
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child:
                      Image.asset("images/search.png", height: 20, width: 20),
                ),
              ),
        if (!isSearching) ...[
          Column(
            children: [
              Text("Location", style: appTheme.textTheme.bodyMedium),
              Row(
                children: [
                  const Icon(Icons.location_on,
                      color: Color.fromARGB(248, 194, 246, 72)),
                  const SizedBox(width: 5),
                  Text("Naperville, Illinois",
                      style: appTheme.textTheme.bodyText1),
                  const SizedBox(width: 5),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: InkWell(
                onTap: () {},
                child: Center(
                    child: Badge(
                        label: Text("3", style: appTheme.textTheme.titleSmall),
                        child: Image.asset('images/notification.png',
                            height: 30)))),
          ),
        ]
      ],
    );
  }

  Container onboard() {
    return Container(
        height: 175,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 64, 64, 64),
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
                      style: appTheme.textTheme.headline3,
                    ),
                    Text(" Spaghetti", style: appTheme.textTheme.headline3),
                    const SizedBox(height: 5),
                    Text(" Up to 3 times per day",
                        style: appTheme.textTheme.subtitle2),
                    const SizedBox(height: 25),
                    Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(248, 194, 246, 72),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text("Order Now",
                                style: appTheme.textTheme.button)))
                  ]),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  "pictures/spaghetti.png",
                  height: 280,
                  width: 250,
                ),
              ),
            ),
          ],
        ));
  }
}

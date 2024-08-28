class Cuisine {
  final String foodName;
  final String foodImage;

  Cuisine({
    required this.foodName,
    required this.foodImage,
  });
}

List<Cuisine> cuisine = [
  Cuisine(
    foodName: "Burger",
    foodImage: "pictures/burgerr.png",
  ),
  Cuisine(
    foodName: "Chicken",
    foodImage: "pictures/crispychicken.png",
  ),
  Cuisine(
    foodName: "Fries",
    foodImage: "pictures/friess.png",
  ),
  Cuisine(
    foodName: "Drink",
    foodImage: "pictures/drinkss.png",
  ),
];

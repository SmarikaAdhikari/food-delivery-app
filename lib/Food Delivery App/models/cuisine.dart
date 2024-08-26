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
    foodImage: "pictures/burgermodel.png",
  ),
  Cuisine(
    foodName: "Chicken",
    foodImage: "pictures/ccc.png",
  ),
  Cuisine(
    foodName: "Fries",
    foodImage: "pictures/fries.png",
  ),
  Cuisine(
    foodName: "Drink",
    foodImage: "pictures/drinks.jpeg",
  ),
];

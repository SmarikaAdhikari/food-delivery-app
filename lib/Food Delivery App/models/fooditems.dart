class Fooditems {
  final String name;
  final String image;
  final String description;
  final double price;
  final String location;
  final int kcal;
  final int proteins;
  final int fats;
  final int carbo;
  bool isFavorite;
  bool iscart;

  Fooditems({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.location,
    required this.kcal,
    required this.proteins,
    required this.fats,
    required this.carbo,
    required this.isFavorite,
    required this.iscart,
  });
}

List<Fooditems> fooditem = [
  Fooditems(
    name: "Golden Spicy Chicken",
    image: "pictures/burger.png",
    description: "description",
    price: 5,
    location: "location",
    kcal: 180,
    proteins: 300,
    fats: 38,
    carbo: 73,
    isFavorite: true,
    iscart: false,
  ),
  Fooditems(
    name: "Cheesse Burger Nagi",
    image: "pictures/cheeseburger.png",
    description: "description",
    price: 4.5,
    location: "location",
    kcal: 180,
    proteins: 300,
    fats: 38,
    carbo: 73,
    isFavorite: true,
    iscart: false,
  ),
  Fooditems(
    name: "Spaghetti",
    image: "pictures/spaghetti.png",
    description: "knjkndlkndklwendklwnedlkwnefkjwef",
    price: 2.5,
    location: "location",
    kcal: 180,
    proteins: 300,
    fats: 38,
    carbo: 73,
    isFavorite: true,
    iscart: false,
  ),
  Fooditems(
    name: "Cheesse Ham Burger",
    image: "pictures/burger.png",
    description: "description",
    price: 3.5,
    location: "location",
    kcal: 180,
    proteins: 300,
    fats: 38,
    carbo: 73,
    isFavorite: true,
    iscart: false,
  ),
];

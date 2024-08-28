class Fooditems {
  final String name;
  final String image;
  final String description;
  final double price;
  final String location;
  final double kcal;
  final double proteins;
  final double fats;
  final double carbo;
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
    name: "Pepperoni Pizza",
    image: "pictures/pizza.png",
    description:
        "Pepperoni is an American variety of salami, made from cured pork and beef mixed together and seasoned with paprika or other chili pepper. Pepperoni is characteristically soft, slightly smoky, and bright red in color.",
    price: 8.4,
    location: "Naperville,Illinois",
    kcal: 190,
    proteins: 300,
    fats: 68.5,
    carbo: 9.3,
    isFavorite: true,
    iscart: false,
  ),
  Fooditems(
    name: "Cheesse Burger Nagi",
    image: "pictures/cheeseburger.png",
    description:
        "A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include many variations in structure, ingredients, and composition.",
    price: 4.5,
    location: "Anaheim,California",
    kcal: 160,
    proteins: 20.4,
    fats: 38.4,
    carbo: 7.5,
    isFavorite: true,
    iscart: false,
  ),
  Fooditems(
    name: "Burger",
    image: "pictures/burger.png",
    description:
        "A burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.A burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.",
    price: 5,
    location: "Naperville,Illinois",
    kcal: 120,
    proteins: 30,
    fats: 38.2,
    carbo: 7.3,
    isFavorite: true,
    iscart: false,
  ),
  Fooditems(
    name: "Spaghetti",
    image: "pictures/spaghetti.png",
    description:
        "Spaghetti is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals.",
    price: 2.5,
    location: "Tampa,Florida",
    kcal: 140,
    proteins: 43.4,
    fats: 28,
    carbo: 7.3,
    isFavorite: true,
    iscart: false,
  ),
];

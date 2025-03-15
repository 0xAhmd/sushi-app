import 'package:flutter/widgets.dart';
import 'package:sushi/models/food_model.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Sushi",
      imagePath: 'assets/images/sushiz.png',
      price: "20.00",
      rating: "4.0",
      description:
          "Sushi is a traditional Japanese dish combining vinegared rice with fresh seafood, vegetables, and other ingredients. It comes in many forms, such as nigiri (hand-pressed rice with fish), maki (rolled sushi with seaweed), and sashimi (thinly sliced raw fish). The balance of flavors, from the sweetness of the rice to the umami of the fish, creates a delicate and satisfying bite.",
    ),

    Food(
      name: "Ramen",
      imagePath: 'assets/images/ramen.png',
      price: "60.00",
      rating: "5.0",
      description:
          "Ramen is a beloved Japanese noodle dish known for its rich, flavorful broth and perfectly cooked wheat noodles. There are various styles, including shoyu (soy sauce-based), miso (fermented soybean paste-based), tonkotsu (pork bone broth), and shio (salt-based).",
    ),

    Food(
      name: "tampura",
      imagePath: 'assets/images/tempura.png',
      price: "40.00",
      rating: '4.5',
      description:
          "Tempura is a crispy and light Japanese dish featuring seafood, vegetables, and even unique ingredients like sweet potatoes or mushrooms, coated in a delicate batter and deep-fried to perfection. The batter is made using ice-cold water and flour to achieve its signature crispiness.",
    ),

    Food(
      name: "Takoyaki",
      imagePath: "assets/images/takoyaki.png",
      price: "30.00",
      rating: "4.2",
      description:
          "Takoyaki are round, golden-brown snacks filled with diced octopus, tempura scraps, green onions, and pickled ginger, all cooked in a special griddle. Crispy on the outside and soft on the inside, they are topped with savory takoyaki sauce, creamy Japanese mayo, bonito flakes, and dried seaweed.",
    ),

    Food(
      name: "Yakitori",
      imagePath: "assets/images/yakitori.png",
      price: "25.00",
      rating: "4.0",
      description:
          "Yakitori is a Japanese skewered and grilled chicken dish, offering a perfect balance of smoky, juicy, and savory flavors. It is traditionally cooked over a charcoal grill and seasoned with either shio (salt) or tare (a sweet soy-based glaze). Popular cuts include tender thigh meat, crispy skin, and flavorful chicken liver.",
    ),
  ];

  final List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;

  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removefromCard(Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }
}

class FoodItems {
  final String itemName;
  final String imageUrl;

  FoodItems({required this.itemName, required this.imageUrl});
}

class BurgerDetails {
  final String foodName;
  final String details;
  final String foodPrice;
  final String imageUrl;
  final String foodCategory;

  BurgerDetails(
      {required this.foodName,
      required this.details,
      required this.foodPrice,
      required this.imageUrl,
      required this.foodCategory});
}

class PizzaDetails {
  final String foodName;
  final String details;
  final String foodPrice;
  final String imageUrl;
  final String foodCategory;

  PizzaDetails(
      {required this.foodName,
      required this.foodPrice,
      required this.details,
      required this.imageUrl,
      required this.foodCategory});
}

List<FoodItems> foodItems = [
  FoodItems(itemName: 'Burger', imageUrl: 'assets/images/burger 1.png'),
  FoodItems(itemName: 'Pizza', imageUrl: 'assets/images/pizza 1.png'),
  FoodItems(itemName: 'Cake', imageUrl: 'assets/images/cake 1.png'),
  FoodItems(itemName: 'MoMo', imageUrl: 'assets/images/girl.jpg')
];

List<BurgerDetails> burgerDetails = [
  BurgerDetails(
      foodName: 'Chipotle Cheesy Chicken',
      foodPrice: 'Rs 100',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/burger 1.png',
      foodCategory: 'Chicken Burger'),
  BurgerDetails(
      foodName: 'Mushroom Cheesy Chicken',
      foodPrice: 'Rs 150',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/burger 2.png',
      foodCategory: 'Mushroom Burger'),
  BurgerDetails(
      foodName: 'Cheesy Ham',
      foodPrice: 'Rs 100',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/burger 3.webp',
      foodCategory: 'Ham Burger'),
  BurgerDetails(
      foodName: 'Cheesy Ham',
      foodPrice: 'Rs 100',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/burger 1.png',
      foodCategory: 'Ham Burger'),
  BurgerDetails(
      foodName: 'Cheesy Ham',
      foodPrice: 'Rs 100',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/burger 2.png',
      foodCategory: 'Ham Burger'),
];

List<PizzaDetails> pizzaDetails = [
  PizzaDetails(
      foodName: 'Chipotle Pizza Chicken',
      foodPrice: 'Rs 150',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/pizza 1.png',
      foodCategory: 'Chicken Pizza'),
  PizzaDetails(
      foodName: 'Mushroom Pizza Chicken',
      foodPrice: 'Rs 300',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/pizza 2.jpg',
      foodCategory: 'Mushroom Pizza'),
  PizzaDetails(
      foodName: 'Cheesy Pizza',
      foodPrice: 'Rs 400',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/pizza 3.jpg',
      foodCategory: 'Ham Pizza'),
  PizzaDetails(
      foodName: 'Cheesy Pizza',
      foodPrice: 'Rs 450',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/burger 1.png',
      foodCategory: 'Ham Pizza'),
  PizzaDetails(
      foodName: 'Cheesy Pizza',
      foodPrice: 'Rs 600',
      details:
          'A signature flame-grilled chicken paty topped with smokedd beef',
      imageUrl: 'assets/images/shoe.jpg',
      foodCategory: 'Ham Pizza'),
];

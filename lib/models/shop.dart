import 'package:bubble_tea/models/drink.dart';
import 'package:flutter/material.dart';

class BubbleTeaShop extends ChangeNotifier {
  //if something is a ChangeNotifier, you can subscribe to its changes
  final List<Drink> _shop = [
    const Drink(
        name: 'Pearl Milk Tea',
        price: "4.00",
        imagePath: 'lib/images/bubble-tea.png'),
  ];

  final List<Drink> _userCart = [];

  List<Drink> get shop => _shop;

  List<Drink> get cart => _userCart;

  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}

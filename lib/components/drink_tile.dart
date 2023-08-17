import 'package:flutter/material.dart';
import 'package:bubble_tea/models/drink.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  final void Function()? onTap;
  const DrinkTile({super.key, required this.drink, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text(drink.price),
          leading: Image.asset(drink.imagePath),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}

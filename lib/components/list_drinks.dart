import 'package:flutter/material.dart';

class ListDrinks extends StatelessWidget {
  final List drinks;
  
  ListDrinks({required this.drinks});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: drinks.map((drink) {
      return Expanded(
        child: Text(drink.description),
      );
    }).toList());
  }
}

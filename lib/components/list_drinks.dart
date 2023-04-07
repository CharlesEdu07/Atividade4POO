import 'package:flutter/material.dart';
import '../models/drinks.dart';

class ListDrinks extends StatelessWidget {
  final _drinks = [
    Drink(description: "La Fin Du Monde - Bock - 65 ibu"),
    Drink(description: "Sapporo Premiume - Sour Ale - 54 ibu"),
    Drink(description: "Duvel - Pilsner - 82 ibu"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _drinks.map((drink) {
      return Expanded(
        child: Text(drink.description),
      );
    }).toList());
  }
}

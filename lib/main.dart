import 'package:flutter/material.dart';
import './models/drinks.dart';
import './components/list_drinks.dart';
import './components/bottom_navbar_items.dart';

void main() {
  runApp(const TipsApp());
}

class TipsApp extends StatelessWidget {
  const TipsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _drinks = [
    Drink(description: "La Fin Du Monde - Bock - 65 ibu"),
    Drink(description: "Sapporo Premiume - Sour Ale - 54 ibu"),
    Drink(description: "Duvel - Pilsner - 82 ibu"),
    Drink(description: "Budweiser - Lager - 41 ibu"),
  ];

  final _buttons = [
    {"label": "Home", "icon": Icons.home},
    {"label": "Search", "icon": Icons.search},
    {"label": "Favorite", "icon": Icons.favorite},
    {"label": "Profile", "icon": Icons.person},
    {"label": "Settings", "icon": Icons.settings}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicas'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(100),
          child: ListDrinks(drinks: _drinks),
        ),
      ),
      bottomNavigationBar: BottomNavbarItems(buttons: _buttons),
    );
  }
}

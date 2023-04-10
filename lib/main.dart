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
  ];

  final _icons = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
    Icons.gamepad,
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
      bottomNavigationBar: BottomNavbarItems(icons: _icons),
    );
  }
}

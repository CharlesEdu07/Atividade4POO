import 'package:atividade4poo/models/drinks.dart';
import 'package:flutter/material.dart';
import '/components/bottomnavbaritens.dart';
import './models/drinks.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicas'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(100),
        child: Column(children:
          _drinks.map((drink) {
            return Expanded(
              child: Text(drink.description),
            );
          }).toList()
        )
      ),
      bottomNavigationBar: BottomNavbarItems(),
    );
  }
}

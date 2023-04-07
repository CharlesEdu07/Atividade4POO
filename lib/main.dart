import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicas'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(100),
          child: ListDrinks(),
        ),
      ),
      bottomNavigationBar: BottomNavbarItems(),
    );
  }
}

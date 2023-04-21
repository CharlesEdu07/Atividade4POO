import 'package:flutter/material.dart';
import './models/drinks.dart';
import './components/list_drinks.dart';
import './components/bottom_navbar_items.dart';
import 'components/navbar.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _drinks = [
    {
      "name": "La Fin Du Monde",
      "style": "Bock",
      "ibu": 65,
    },
    {
      "name": "Sapporo Premiume",
      "style": "Sour Ale",
      "ibu": 54,
    },
    {
      "name": "Duvel",
      "style": "Pilsner",
      "ibu": 82,
    },
    {
      "name": "Budweiser",
      "style": "Lager",
      "ibu": 41,
    },
  ];

  final _buttons = [
    {"label": "Home", "icon": Icons.home},
    {"label": "Search", "icon": Icons.search},
    {"label": "Favorite", "icon": Icons.favorite},
    {"label": "Profile", "icon": Icons.person},
    {"label": "Settings", "icon": Icons.settings}
  ];

  Color _appBarColor = Colors.blue;

  void _changeColor(Color color) {
    setState(() {
      _appBarColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(changeColor: _changeColor, appBarColor: _appBarColor),
      appBar: AppBar(
        title: const Text('Dicas'),
        backgroundColor: _appBarColor,
      ),
      body: ListDrinks(drinks: _drinks),
      bottomNavigationBar: BottomNavbarItems(buttons: _buttons),
    );
  }
}

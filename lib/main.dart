import 'package:flutter/material.dart';
import './models/drinks.dart';
import './components/list_drinks.dart';
import './components/list_drinks_tile.dart';
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
  final List<Map<String, Object>> _drinks = [
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
    {
      "name": "Bud Light",
      "style": "Lager",
      "ibu": 41,
    },
    {
      "name": "IPA",
      "style": "India Pale Ale",
      "ibu": 60,
    },
    {
      "name": "Stout",
      "style": "Irish Stout",
      "ibu": 40,
    },
    {
      "name": "Weissbier",
      "style": "Hefeweizen",
      "ibu": 15,
    },
    {
      "name": "Belgian Dubbel",
      "style": "Belgian Dubbel",
      "ibu": 20,
    },
    {
      "name": "Pilsner",
      "style": "Czech Pilsner",
      "ibu": 35,
    },
    {
      "name": "Saison",
      "style": "Farmhouse Ale",
      "ibu": 30,
    },
    {
      "name": "Brown Ale",
      "style": "English Brown Ale",
      "ibu": 25,
    },
    {
      "name": "Dunkel",
      "style": "Munich Dunkel Lager",
      "ibu": 18,
    },
    {
      "name": "APA",
      "style": "American Pale Ale",
      "ibu": 45,
    },
    {
      "name": "Gose",
      "style": "German Sour Ale",
      "ibu": 12,
    }
  ];

  _getKeys() {
    List<String> keys = _drinks[0].keys.toList();
    return keys;
  }

  final _buttons = [
    {"label": "Coffe", "icon": Icons.coffee_maker},
    {"label": "Drinks", "icon": Icons.local_drink},
    {"label": "Nações", "icon": Icons.flag},
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
      body: ListDrinksTile(
        drinks: _drinks,
        icon: Icons.local_drink_outlined,
      ),
      bottomNavigationBar: BottomNavbarItems(buttons: _buttons),
    );
  }
}

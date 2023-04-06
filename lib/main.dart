import 'package:flutter/material.dart';

void main() {
  runApp(const TipsApp());
}

class TipsApp extends StatelessWidget {
  const TipsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Column(children: [
        Expanded(
          child: Text("La Fin Du Monde - Bock - 65 ibu"),
        ),
        Expanded(
          child: Text("Sapporo Premiume - Sour Ale - 54 ibu"),
        ),
        Expanded(
          child: Text("Duvel - Pilsner - 82 ibu"),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.coffee_outlined),
          label: 'Café',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_drink_outlined),
          label: 'Cerveja',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.flag_outlined),
          label: 'Nações',
        ),
      ]),
    );
  }
}

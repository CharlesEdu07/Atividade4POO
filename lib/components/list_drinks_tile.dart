import 'package:flutter/material.dart';

class ListDrinksTile extends StatefulWidget {
  final List drinks;
  final icon;

  ListDrinksTile({required this.drinks, required this.icon});

  @override
  State<ListDrinksTile> createState() => _ListDrinksTileState();
}

class _ListDrinksTileState extends State<ListDrinksTile> {
  var columnNames = ['Descrição', 'Estilo', 'IBU'];
  var propertyNames = ['name', 'style', 'ibu'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: widget.drinks.isEmpty
            ? Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 150),
                    const Text(
                      'Nenhum drink cadastrado',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        'assets/images/waiting.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              )
            : ListView(
                children: <Widget>[
                  ...widget.drinks.map((drink) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(widget.icon),
                        ),
                        title: Text(drink['name']),
                        subtitle: Text("Estilo: ${drink['style']}"),
                        trailing: Text("IBU: ${drink['ibu']}"),
                      ),
                    );
                  }).toList(),
                ],
              ));
  }
}

import 'package:flutter/material.dart';

class ListDrinks extends StatelessWidget {
  final List drinks;
  var columnNames = ['Descrição', 'Estilo', 'IBU'];
  var propertyNames = ['name', 'style', 'ibu'];

  ListDrinks({required this.drinks});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: drinks.isEmpty
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
                children: [
                  DataTable(
                    columns: columnNames
                        .map(
                          (name) => DataColumn(
                            label: Expanded(
                              child: Text(
                                name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    rows: drinks
                        .map(
                          (drink) => DataRow(
                            cells: propertyNames
                                .map(
                                  (name) => DataCell(
                                    Text('${drink[name]}'),
                                  ),
                                )
                                .toList(),
                          ),
                        )
                        .toList(),
                  )
                ],
              ));
  }
}

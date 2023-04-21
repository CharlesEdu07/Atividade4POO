import 'package:flutter/material.dart';

class ListDrinks extends StatelessWidget {
  final List drinks;

  ListDrinks({required this.drinks});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: drinks.isEmpty
            ? Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Nenhuma bebida cadastrada',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            : ListView(
              children: [ DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Descrição',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                  rows: drinks.map((drink) {
                    return DataRow(
                      cells: <DataCell>[
                        DataCell(Text(drink.description)),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ));
            
  }
}

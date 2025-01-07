import 'package:flutter/material.dart';



// ############################ EXERCÍCIO 1 ################################  

main() {
  runApp(MyApp());
}

final exemploItens = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
  'Item 6',
  'Item 7',
  'Item 8',
  'Item 9',
  'Item 10'
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ItemListView(itens: exemploItens),
      ),
    );
  }
}

class ItemListView extends StatelessWidget {
  final List<String> itens;
  const ItemListView({
    super.key,
    required this.itens,
  });

  @override
  Widget build(BuildContext context) {
    // Retorne uma lista com os itens
    // Cada item deve ser um ListTile com o texto do item
    // como título.
    return ListView(children: [
      ListTile(title: Text(itens[0]),),
      ListTile(title: Text(itens[1]),),
      ListTile(title: Text(itens[2]),),
      ListTile(title: Text(itens[3]),),
      ListTile(title: Text(itens[4]),),
      ListTile(title: Text(itens[5]),),
      ListTile(title: Text(itens[6]),),
      ListTile(title: Text(itens[7]),),
      ListTile(title: Text(itens[8]),),
      ListTile(title: Text(itens[9]),)
    ],);
  }
}




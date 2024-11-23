import 'package:flutter/material.dart';

void main() {
  runApp(criaApp());
}

/* 
################### EXERCÍCIOS 1 E 2  ##################

criaApp() {
  // Altere o código para que o texto
  // esteja centralizado e com um retângulo
  // verde de fundo, ao redor do texto,
  // com uma margem de 16 pixels.
  //
  // A cor deve ser Colors.green
  return Center(
    child: Container(
      color: Colors.green,
      padding: const EdgeInsets.all(16),
      child: const Text(
        'Oi!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
} */

/*

################### EXERCÍCIO 3 ##################

 criaApp() {
  // Altere o código para exibir dois textos:
  // - 'Cabeçalho da tela' no topo
  // - 'Rodapé' na parte inferior
  //
  // Os textos devem estar centralizados horizontalmente
  return const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cabeçalho da terra',
              textDirection: TextDirection.ltr,
            ),
            Text(
              'Rodapé',
              textDirection: TextDirection.ltr,
            )
          ],
        ),
      ),
    ),
  );
} */

/*

################### EXERCÍCIO 4 ################## */

/* criaApp() {
  // Modifique o código para reconstruir a imagem
  // de referência, com os textos 'Entrar' e
  // 'Cadastrar-se'
  //
  // Informações:
  // - As cores dos retângulos são Colors.amber e
  //   Colors.cyan
  // - Os retângulos possuem um padding de 16 pixels
  // - Os textos estão centralizados
  return MaterialApp(
    home: Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                padding: const EdgeInsets.all(16),
                color: Colors.amber,
                child: const Text('Entrar', textDirection: TextDirection.ltr)),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.cyan,
              child: const Text(
                'Cadastre-se',
                textDirection: TextDirection.ltr,
              ),
            )
          ],
        ),
      ),
    ),
  );
} */

/*

################### EXERCÍCIO 5 ################## */

Widget criaApp() {
  // Construa o app segundo a tela de referência.
  // Para isso, substitua o Placeholder pelos
  // widgets adequados.
  //
  // - A distância entre o ícone e o texto é de 8 pixels.
  // - O enchimento ao redor do conjunto (ícone e texto)
  // é de 16 pixels.
  // - A cor do enchimento é Colors.blueGrey.shade100
  // - O texto e o ícone possuem tamanho 20 pixels.
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.blueGrey.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20,                
              ),
              Container(padding: const EdgeInsets.all(8)),
              const Text('Like',style: TextStyle(fontSize:20))
              
            ],
          ),
        )
        
      ),
    ),
  );
}

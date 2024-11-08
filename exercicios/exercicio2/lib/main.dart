import 'package:flutter/material.dart';

/* ############# EXERCÍCIO 1 ###################

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(child: BotaoLike() // troque por BotaoLike(),
            ),
      ),
    ),
  );
}

class BotaoLike extends StatefulWidget {
  const BotaoLike({super.key});

  @override
  State<BotaoLike> createState() => _BotaoLikeState();
}

class _BotaoLikeState extends State<BotaoLike> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: ElevatedButton(
        style: style,
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Like'),
            Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}


// Crie o widget BotaoLike, que é um ElevatedButton que contém
// um ícone e um texto. O ícone é um coração preenchido
// e o texto é "Like".
// ... */

//############# EXERCÍCIO 2 ###################

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: BotaoLike(), // troque por BotaoLike(),
        ),
      ),
    ),
  );
}

class BotaoLike extends StatelessWidget {
  final String texto;
  const BotaoLike({super.key, this.texto = 'Like'});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(texto),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}


// Crie o widget BotaoLike, que é um ElevatedButton que contém
// um ícone e um texto. O ícone é um coração preenchido.
// Opcionalmente BotaoLike pode receber um parâmetro nomeado,
// chamado texto, que é o texto a ser exibido no botão.
// Se o parâmetro não for fornecido, o texto padrão é "Like".
// ...


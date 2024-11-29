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

/* //############# EXERCÍCIO 2 ###################

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

*/

//############# EXERCÍCIO 3 ###################

void main() {
  runApp(const MaterialApp(
    title: 'Navegação',
    home: Inicio(),
  ));
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAppBar(),
    );
  }
}

final ButtonStyle appBarButtonStyle = TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2))));

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue,
            child: const Text(
              "Início",
              style: TextStyle(color: Colors.white),
            )),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            style: appBarButtonStyle,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext detalhe) {
                return Scaffold(
                  appBar: AppBar(
                    title: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.blue,
                        child: const Text("Detalhe",
                            style: TextStyle(color: Colors.white))),
                    centerTitle: true,
                  ),
                  body: const Center(
                    child: Text("Azul"),
                  ),
                );
              }));
            },
            child: const Text("Azul"),
          ),
          TextButton(
            style: appBarButtonStyle,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext detalhe) {
                return Scaffold(
                  appBar: AppBar(
                    title: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.blue,
                        child: const Text("Detalhe",
                            style: TextStyle(color: Colors.white))),
                    centerTitle: true,
                  ),
                  body: const Center(
                    child: Text("Vermelho"),
                  ),
                );
              }));
            },
            child: const Text("Vermelho"),
          ),
        ],
      )),
    );
  }
} 


//############# EXERCÍCIO 4 ###################


/* void main() {
  runApp(const MaterialApp(
    home: Scaffold(body: Inicio()),
  ));
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: const Center(
        child: BotaoOnOff(),
      ),
    );
  }
}

class BotaoOnOff extends StatefulWidget {
  final String valorInicial;
  const BotaoOnOff({super.key, this.valorInicial = "Off"});

  @override
  State<BotaoOnOff> createState() => _BotaoOnOffState();
}

class _BotaoOnOffState extends State<BotaoOnOff> {
  String texto = "Off";

  @override
  void initState() {
    super.initState();
    texto = widget.valorInicial;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (texto == "Off"){
            texto = "On";
          }
          else{
            texto = "Off";
          }
        });
      },
      child: Text(texto),
    );
  }
} */

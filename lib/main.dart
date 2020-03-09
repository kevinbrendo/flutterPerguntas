import 'package:flutter/material.dart';

main () => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget{

  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;

  void responder() {
    setState(() {
    perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    final List<String> perguntas = [
    'Qual é a sua tua cor fav?',
    'Qual é o seu animal fav?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';


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
  }

  @override
  Widget build(BuildContext context) {

    final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual a sua cor fav?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal fav?',
      'respostas': ['Coelho', 'Cachorro', 'Gato', 'Passaro'],
    },
    {
      'texto': 'Qual é o seu instrutor fav?',
      'respostas': ['Leo', 'Maria', 'Tereza', 'Pedro'],
    },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]['texto']),
            Resposta('Resposta 1', responder),
            Resposta('Resposta 2', responder),
            Resposta('Resposta 3', responder),
          ],
        ),
      ),
    );
  }
}
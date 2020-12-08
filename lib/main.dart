import 'package:flutter/material.dart';
import 'package:perguntados/questionario.dart';
import 'package:perguntados/resultado.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Azul', 'pontuacao': 3},
        {'texto': 'Verde', 'pontuacao': 6}
      ]
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Leão', 'pontuacao': 3},
        {'texto': 'Tigre', 'pontuacao': 6}
      ]
    }
  ];

  int _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  _responder(int pontuacao) {
    print('Respondeu $pontuacao');
    setState(() {
      this._perguntaSelecionada++;
      this._pontuacaoTotal += pontuacao;
    });
  }

  _reiniciar() {
    setState(() {
      this._perguntaSelecionada = 0;
      this._pontuacaoTotal = 0;
    });
  }

  bool _existeProximaPergunta() {
    return this._perguntaSelecionada < this._perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntados'),
          ),
          body: _existeProximaPergunta()
              ? Questionario(
                  _perguntas,
                  this._perguntaSelecionada,
                  _responder,
                )
              : Resultado(
                  _pontuacaoTotal,
                  _reiniciar,
                )),
    );
  }
}

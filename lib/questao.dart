import 'package:flutter/material.dart';
import './resposta.dart';

class Questao extends StatelessWidget {
  final Map<String, Object> _pergunta;
  final void Function(int) _quandoResponder;

  Questao(
    this._pergunta,
    this._quandoResponder,
  );

  @override
  Widget build(BuildContext context) {
    final String texto = _pergunta['texto'];
    List<Map<String, Object>> respostas = _pergunta['respostas'];

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            texto,
            style: TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          ...respostas
              .map((resp) => Resposta(
                    resp['texto'],
                    resp['pontuacao'],
                    _quandoResponder,
                  ))
              .toList(),
        ],
      ),
    );
  }
}

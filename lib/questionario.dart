import 'package:flutter/material.dart';
import './questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> _perguntas;
  final int _perguntaSelecionada;
  final void Function(int) _quandoResponder;

  Questionario(
    this._perguntas,
    this._perguntaSelecionada,
    this._quandoResponder,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Questao(
        _perguntas[_perguntaSelecionada],
        _quandoResponder,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final int pontuacao;
  final void Function(int) _quandoResponder;

  Resposta(this.texto, this.pontuacao, this._quandoResponder);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(this.texto),
        onPressed: () => _quandoResponder(this.pontuacao),
      ),
    );
  }
}

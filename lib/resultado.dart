import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int _pontuacaoTotal;
  final void Function() _quandoReiniciar;

  Resultado(this._pontuacaoTotal, this._quandoReiniciar);

  String get pontuacaoTotal {
    return this._pontuacaoTotal > 15 ? 'TOP' : 'MEH';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Resultado: ${this._pontuacaoTotal} - $pontuacaoTotal',
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: _quandoReiniciar,
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blueAccent,
        )
      ],
    );
  }
}

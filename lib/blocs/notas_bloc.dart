import 'package:flutter/widgets.dart';

class NotasBloc {
  final nota1Controller = TextEditingController();
  final nota2Controller = TextEditingController();
  var resultado = '';

  void calcular() {
    double nota1 = double.tryParse(nota1Controller.text) ?? -1;
    double nota2 = double.tryParse(nota2Controller.text) ?? -1;

    if ((nota1 < 0) || (nota1 > 10)) {
      resultado = 'Nota do 1º Bim inválida (0-10)';
      return;
    }
    if ((nota2 < 0) || (nota2 > 10)) {
      resultado = 'Nota do 2º Bim inválida (0-10)';
      return;
    }

    double media = (nota1 + nota2) / 2;

    if (media >= 7) {
      resultado = 'Aprovado com a média $media';
    }
    else {
      resultado = 'Reprovado com a média $media';
    }
  }
}
import 'dart:math';

import 'Figuras.dart';

class Cuadrado extends Figuras {
  double _lado;

  Cuadrado(this._lado);

  @override
  double calcularArea() {
    return pow(_lado, 2).toDouble(); // lado^2
  }

  @override
  String toString() {
    return 'Cuadrado con lado $_lado tiene un área de ${calcularArea()}';
  }
}

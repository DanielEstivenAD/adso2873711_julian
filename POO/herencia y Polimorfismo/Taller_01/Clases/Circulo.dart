import 'dart:math';

import 'Figuras.dart';

class Circulo extends Figuras {
  double _radio;

  // Constructor para inicializar el radio
  Circulo(this._radio);

  // Implementación del método para calcular el área del círculo
  @override
  double calcularArea() {
    return pi * pow(_radio, 2); // pi * r^2
  }

  @override
  String toString() {
    return 'Círculo con radio $_radio tiene un área de ${calcularArea()}';
  }
}
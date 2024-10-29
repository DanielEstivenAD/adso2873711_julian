import 'Figuras.dart';

class Triangulo extends Figuras {
  double _base, _altura;

  Triangulo(this._base, this._altura);

  @override
  double calcularArea() {
    return (_base * _altura) / 2;
  }

  @override
  String toString() {
    return 'Triángulo con base $_base y altura $_altura tiene un área de ${calcularArea()}';
  }
}
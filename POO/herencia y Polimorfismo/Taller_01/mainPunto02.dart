import 'Clases/Circulo.dart';
import 'Clases/Cuadrado.dart';
import 'Clases/Figuras.dart';
import 'Clases/Triangulo.dart';

void main() {
  // Crear los objetos de las clases hijas
  Figuras circulo = Circulo(5);
  Figuras cuadrado = Cuadrado(4);
  Figuras triangulo = Triangulo(3, 6); // Base = 3, Altura = 6

  print(circulo);
  print(cuadrado);
  print(triangulo);
}

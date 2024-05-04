import 'dart:io';
import 'dart:math';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL MULTIPLE 04
  /*
 Calcular el valor de f(x) según la expresión
f(x)
x ^ 2 Si x mod 4 = 0
x / 6 Si x mod 4 = 1
Raiz(x) Si x mod 4 = 2
X ^ 3 + 5 Si x mod 4 = 3
 */
  //DEFINICIÓN Vbles
  double resultado, tipoOperacion, valorX;
  //ENTRADA Alg
  print("Asigne un valor para X");
  valorX = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  tipoOperacion = valorX % 4;
  switch (tipoOperacion) {
    case 0:
      resultado = pow(valorX, 2).toDouble();
      break;
    case 1:
      resultado = valorX / 6;
      break;
    case 2:
      resultado = sqrt(valorX);
      break;
    case 3:
      resultado = pow(valorX, 3).toDouble() + 5;
      break;
    default:
      print("el resultado no contemplado");
      resultado = 0;
  }
  //SALIDA Alg
  print("El resultado es: $resultado");
}

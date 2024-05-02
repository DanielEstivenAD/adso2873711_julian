import 'dart:io';
import 'dart:math';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL MULTIPLE 03
  /*
 Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:
Val Num
100 * v 1
100^v 2
100/v 3
0 Cualquier número
 */
  //DEFINICIÓN Vbles
  int tipoOperacion, numero;
  double resultado;
  //ENTRADA Alg
  print("Indique un numero para realizar los procesos");
  numero = int.parse(stdin.readLineSync()!);
  print("Confirme el tipo de operacion que desea(1-3)");
  tipoOperacion = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  resultado = 0;
  switch (tipoOperacion) {
    case 1:
      resultado = 100 * numero.toDouble();
      break;
    case 2:
      resultado = pow(100, numero).toDouble();
      break;
    case 3:
      resultado = 100 / numero.toDouble();
      break;
    default:
      print("tipo de operacion mal registrado");
  }
  //SALIDA Alg
  print("El resultado es : $resultado");
}

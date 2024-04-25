import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL DOBLE 01
  /*
 Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
 */
  //DEFINICIÓN Vbles
  double num1, num2;
  //ENTRADA Alg
  print("Ingrese el número 1 y 2");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  //PROCESO y SALIDA Alg
  if (num1 > num2) {
    print("$num2, $num1");
  } else {
    print("$num1, $num2");
  }
}

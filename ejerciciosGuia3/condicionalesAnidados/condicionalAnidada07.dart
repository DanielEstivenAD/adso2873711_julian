import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 07
  /*
 Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los
reste y si no que los sume.
 */
  //DEFINICIÓN Vbles
  double num1, num2, resultado;
  //ENTRADA Alg
  print("Indique por favor un número");
  num1 = double.parse(stdin.readLineSync()!);
  print("Indique por favor otro número");
  num2 = double.parse(stdin.readLineSync()!);
  //PROCESO-SALIDA Alg
  if (num1 == num2) {
    resultado = num1 * num2;
    print("En este caso como los dos números son iguales se multiplicarón y su resultado es $resultado");
  } else if (num1 > num2) {
    resultado = num1 - num2;
    print("En este caso como el primer número 1 es mayor que el número 2  se restaron y su resultado es $resultado");
  } else {
    resultado = num1 + num2;
      print("En este caso como el primer número 1 es menor que el número 2 se restaron y su resultado es $resultado");
  }
}

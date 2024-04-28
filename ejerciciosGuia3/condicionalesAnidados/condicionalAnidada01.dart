import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 01
  /*
 Dado tres números calcular el mayor
 */
  //DEFINICIÓN Vbles
  double num1, num2, num3;
  //ENTRADA Alg
  print("Ingrese por favor 3 números");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  num3 = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  if (num1 > num2 && num1 > num3) {
    print("El número $num1 es el mayor de los 3 números dados");
  } else if (num2 > num1 && num2 > num3) {
    print("El número $num2 es el mayor de los 3 números dados");
  } else if (num3 > num1 && num3 > num2) {
    print("El número $num3 es el mayor de los 3 números dados");
  } else {
    print("Todos los números son iguales");
  }
  //SALIDA Alg
}

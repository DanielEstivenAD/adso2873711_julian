import 'dart:io';

void main() {
  print("Ejemplo - 02 Entrada/Salida De Datos");
  //DEFENICIÓN vbles
  int num1, num2, suma;
  //ENTRADA Alg
  print("Ingrese valor de número 1");
  num1 = int.parse(stdin
      .readLineSync()!); //el exclamación para segurar de que el datos esta bien
  stdout.writeln("Ingrese valor de número 2");
  num2 = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  suma = num1 + num2;
  //SALIDA Alg
  print("El resultado de la suma es:$suma");
}

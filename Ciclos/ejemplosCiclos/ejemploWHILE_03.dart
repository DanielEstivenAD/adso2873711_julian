import 'dart:io';

void main(List<String> args) {
  /*
  Desarrollar un algoritmo que lea n números positivos, determine y muestre el promedio de los n números positivos
  */
  //DEFINICIÓN Vbles
  int num, cantNum, contador = 0, suma = 0;
  double promedio;
  //ENTRADA Alg
  print("Digite la cantidad de números");
  cantNum = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  while (contador < cantNum) {
    print("Digite un número positivo");
    num = int.parse(stdin.readLineSync()!);
    if (num > 0) {
      suma = suma + num;
      contador++;
    } else {
      print("El número digitado no es par");
    }
  }
  promedio = suma / contador;
  print("El promediop es: $promedio");
}

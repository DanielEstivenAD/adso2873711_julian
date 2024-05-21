import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE WHILE 07
  /*
 Encontrar el menor valor de un conjunto de n números dados.
 */
  //DEFINICIÓN Vbles
  int cantNum, contador = 0;
  double num, numMenor = 100000000;
  //ENTRADA Alg
  print("Indique la cantidad de número a evaluar");
  cantNum = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  while (contador < cantNum) {
    print("Ingrese el número ${contador + 1}");
    num = double.parse(stdin.readLineSync()!);
    if (num < numMenor) {
      numMenor = num;
    } else {
      print("Continuamos analizando");
    }
    contador++;
  }
  //SALIDA Alg
  print("El menor valor ingresado fue el $numMenor");
}

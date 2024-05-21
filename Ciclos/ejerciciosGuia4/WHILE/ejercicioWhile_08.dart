import 'dart:io';

void main(List<String> args){
 //Daniel Estiven Arboleda Duque - EJE WHILE 08
 /*
 Encontrar el mayor valor de un conjunto de n números dados.
 */
 //DEFINICIÓN Vbles
   int cantNum, contador = 0;
  double num, numMayor = -10000000000000;
  //ENTRADA Alg
  print("Indique la cantidad de número a evaluar");
  cantNum = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  while (contador < cantNum) {
    print("Ingrese el número ${contador + 1}");
    num = double.parse(stdin.readLineSync()!);
    if (num > numMayor) {
      numMayor = num;
    } else {
      print("Continuamos analizando");
    }
    contador++;
  }
  //SALIDA Alg
  print("El mayor valor ingresado fue el $numMayor");
}

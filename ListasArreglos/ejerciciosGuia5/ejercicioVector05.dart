import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 05
  /*Diseñe  un  algoritmo  que  lea  un  número  cualquiera  y  lo  busque  en  
 el  vector  X,  el  cual  tiene almacenados  12  elementos.  Escribir  la  
 posición  donde  se  encuentra  almacenado  el  número  en  el vector o el 
 mensaje “NO” si no lo encuentra.
 */
  //DEFINICIÓN Vbles
  List<double> list = [];
  int cantNum = 5;
  double num, numBuscar;
  //ENTRADA Alg
  //PROCESO Alg
  for (var i = 0; i < cantNum; i++) {
    print("Digite el número ${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    list.add(num);
  }
  print("Que número va a buscar");
  numBuscar = double.parse(stdin.readLineSync()!);
  for (var i = 0; i < list.length; i++) {
    if (list[i] == numBuscar) {
      print("El número encontrado es: $numBuscar en la posicion ${list.indexOf(numBuscar)}");
    } else {
      print("NO se encuentra el número");
    }
  }
  //SALIDA Alg
}

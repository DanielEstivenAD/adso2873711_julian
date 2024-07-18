import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 05
  /*Diseñe  un  algoritmo  que  lea  un  número  cualquiera  y  lo  busque  en  
 el  vector  X,  el  cual  tiene almacenados  12  elementos.  Escribir  la  
 posición  donde  se  encuentra  almacenado  el  número  en  el vector o el 
 mensaje “NO” si no lo encuentra.
 */
  //DEFINICIÓN Vbles
  List<int> list = [];
  int cantNum = 5, numBuscar, num;
  int posicion = -1;
  //ENTRADA Alg
  //PROCESO Alg
  for (var i = 0; i < cantNum; i++) {
    print("Digite el número ${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    list.add(num);
  }
  print(list);
  print("Que número va a buscar");
  numBuscar = int.parse(stdin.readLineSync()!);
  //Ciclo para buscar elemento
  for (int i = 0; i < list.length; i++) {
    if (numBuscar == list[i]) {
      posicion = i;
    break; // Rompe el ciclo y se sale
    }
  }
  //Validación de la posición
  if (posicion != -1) {
    print("El número se encuentra en la posición $posicion");
  } else {
    print("El número no se encontró");
  }
  //SALIDA Alg
}

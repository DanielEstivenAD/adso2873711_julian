import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE FOR 0
  /*
 Calcular  e  imprimir  la  tabla  de  multiplicar  de  un  número  cualquiera.
 Imprimir  el  multiplicando,  el multiplicador y el producto.
 */
  //DEFINICIÓN Vbles
  int cantNum = 10;
  int multiplicacion, multiplicador, num;
  //ENTRADA Alg
    print("Digite un número a multiplicar");
    num = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  for (int multiplicador = 0; multiplicador <=cantNum; multiplicador++) {
    multiplicacion = num * multiplicador;
    print("$num * $multiplicador = $multiplicacion");
  }
  //SALIDA Alg
}

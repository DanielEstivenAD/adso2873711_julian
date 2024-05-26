import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE FOR 02
  /*
 Leer 10 números e imprimir solamente los números positivos
 */
  //DEFINICIÓN Vbles
  int cantNum = 10;
  double num;
  //ENTRADA - PROCESO - SALIDA Alg
  for (int i = 0; i < cantNum; i++) {
    print("Digite el número");
    num=double.parse(stdin.readLineSync()!);
    if (num>0){
      print("$num");
    }
  }
}
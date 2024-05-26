import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 04
  /*Almacenar 8 números en un vector, almacenarlos en otro vector en orden 
 inverso al vector original e imprimir el vector resultante.
 */
  //DEFINICIÓN Vbles
  List<double> listaA = [], listaInvers = [];
  int cantNum = 3;
  double num;
  //ENTRADA Alg
  //PROCESO Alg
  for (var i = 0; i < cantNum; i++) {
    print("Digite el número ${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    listaA.add(num);
  }
  for (var i = listaA.length-1; i>=0; i-=1) {
    listaInvers.add(listaA[i]);
  }
  //SALIDA Alg
  print("Lista original: $listaA");
  print("Lista inversa: $listaInvers");
}

import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE FOR 0
  /*
 Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos
 cero.
 */
  //DEFINICIÓN Vbles
  int cantNum = 20;
  double positivos = 0, negativos = 0, ceros = 0, num;
  //ENTRADA - PROCESO Alg
  for (int i = 0; i < cantNum; i++) {
    print("Ingresa un número");
    num = double.parse(stdin.readLineSync()!);
    if (num > 0) {
      positivos++; // positivos = positivos +1 / positivos+=1
    } else if (num < 0) {
      negativos++; // negativos = negativos +1 / negativos+=1
    } else {
      ceros++; // ceros = ceros +1 / ceros+=1
    }
  }
  //SALIDA Alg
  print("Hay $positivos de números positivos");
  print("Hay $negativos de números negativos");
  print("Hay $ceros de números ceros");
}

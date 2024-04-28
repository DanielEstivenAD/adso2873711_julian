import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 04
  /*
 En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha
promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de
cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona
tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la
compra
 */
  //DEFINICIÓN Vbles
  double cantiLLantas;
  double valorPagar;
  //ENTRADA Alg
  print("Indique por favor la cantidad de llantas a comprar");
  cantiLLantas = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  if (cantiLLantas < 5) {
    valorPagar = 90000 * cantiLLantas;
    print("El valor de cada llanta es de 90000");
    print("El total a pagar por todas las llantas es de $valorPagar");
  } else if (cantiLLantas > 5 && cantiLLantas < 10) {
    valorPagar = 80000 * cantiLLantas;
    print("El valor de cada llanta es de 80000");
    print("El total a pagar por todas las llantas es de $valorPagar");
  } else if (cantiLLantas > 10) {
    valorPagar = 70000 * cantiLLantas;
    print("El valor de cada llanta es de 70000");
    print("El total a pagar por todas las llantas es de $valorPagar");
  }
  //SALIDA Alg
}

import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL DOBLE 03
  /*
 Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10%
 */
  //DEFINICIÓN Vbles
  int cantiCamisas;
  double pagoTotal, descuento, valorUnitario;
  //ENTRADA Alg
  print("Indique por favor la cantidad de camisas a comprar");
  cantiCamisas = int.parse(stdin.readLineSync()!);
  print("Confirme el valor unitario de cada camisa");
  valorUnitario = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  pagoTotal = valorUnitario * cantiCamisas;
  if (cantiCamisas > 3) {
    descuento = pagoTotal * 0.2; //Se aplica el 20%
    print("Tendrá un descuento del 20%");
  } else {
    descuento = pagoTotal * 0.1; //Se aplica el 10%
    print("Tendrá un descuento del 10%");
  }
  pagoTotal = pagoTotal - descuento;
  //SALIDA Alg
  print("El valor total por su compra es de: $pagoTotal");
}

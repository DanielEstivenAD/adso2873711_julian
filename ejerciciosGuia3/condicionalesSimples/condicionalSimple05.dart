import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL SIMPLE 05
  /*
 Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más.
 */
  //DEFINICÍON vbles
  int cantiLlantas;
  double precioUnidad, precioTotal;
  //ENTRADA Alg
  print("Indique la cantidad de llantas que desea comprar");
  cantiLlantas = int.parse(stdin.readLineSync()!);
  //PROCESO-SALIDA Alg
  if (cantiLlantas < 5) {
    print("El valor de cada llanta es 80.000");
    precioUnidad = 80000; 
    precioTotal = precioUnidad * cantiLlantas;
    print("El valor a pagar por las llantas es:$precioTotal");
  }
  if (cantiLlantas >= 5) {
    print("El valor de cada llanta es 70.000");
    precioUnidad = 70000;
    precioTotal = precioUnidad * cantiLlantas;
    print("El valor a pagar por las llantas es:$precioTotal");
  }
}

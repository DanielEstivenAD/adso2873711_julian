import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 05
  /*
 Una frutería ofrece las manzanas con descuento según la siguiente tabla:
 0-2: 0
 2.01-5:10
 5.01-10:15
 10.01 en adelante:20
 Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo 
 vale $1300
 */
  //DEFINICIÓN Vbles
  double cantManzanas, valorCompra, descuento, valorDescuento;
  //ENTRADA Alg
  print("Indique por favor cuantos kilos de manzana desea");
  cantManzanas = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  if (cantManzanas <= 2) {
    valorCompra = 1300 * cantManzanas;
    print("Usted no obtiene un descuento");
    print("Usted tendra que pagar una cantidad de: $valorCompra");
  } else if (cantManzanas >= 2.01 && cantManzanas <= 5) {
    valorCompra = 1300 * cantManzanas;
    descuento = valorCompra * 0.1;
    valorDescuento = valorCompra - descuento;
    print("Usted obtiene un descuento del 10%");
    print("Usted tendra que pagar una cantidad de: $valorDescuento");
  } else if (cantManzanas >= 5.01 && cantManzanas <= 10) {
    valorCompra = 1300 * cantManzanas;
    descuento = valorCompra * 0.15;
    valorDescuento = valorCompra - descuento;
    print("Usted obtiene un descuento del 15%");
    print("Usted tendra que pagar una cantidad de: $valorDescuento");
  } else if (cantManzanas >= 10.01) {
    valorCompra = 1300 * cantManzanas;
    descuento = valorCompra * 0.2;
    valorDescuento = valorCompra - descuento;
    print("Usted obtiene un descuento del 20%");
    print("Usted tendra que pagar una cantidad de: $valorDescuento");
  }
  //SALIDA Alg
}
